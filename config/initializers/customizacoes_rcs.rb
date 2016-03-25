class String

  def from_data_brasil_to_time
    str_data_internacional = self.split('/').reverse.join('-')
    Time.parse("#{str_data_internacional} 12:00:00").in_time_zone
  end

  def to_minusculas_sem_acentos_e_cia
    self.downcase
        .gsub(/[ÁÃÂÀáãâà]/,'a')
        .gsub(/[ÉÊÈéêè]/,'e')
        .gsub(/[ÍÌÎíìî]/,'i')
        .gsub(/[ÔÓÕÒòôõóÖö]/,'o')
        .gsub(/[ÚÙÛúûùúùû]/,'u')
        .gsub(/[Çç]/,'c')
        .gsub(/[º]/,'o')
        .gsub(/[ª]/,'a')
  end

  def canoniza_para_nome_arquivo
    self.to_minusculas_sem_acentos_e_cia
        .gsub(/[\̃\̂\#\́\̀]/,'')
        .gsub(/[\/\,\(\)\:\&\%]/,' ')
  end

  def canoniza_para_url
    self.canoniza_para_nome_arquivo
        .gsub(/[\s\.]/,'-')
  end
  
end

class Integer
  def em_dinheiro
    ("%.2f" % (self.to_f/100)).gsub('.', ',')
  end
end

class Float
  def em_dinheiro
    ("%.2f" % (self)).gsub('.', ',')
  end
end

class Time

  def em_texto_formatado tipo=nil
    if tipo=='data_long'
      self.in_time_zone.strftime('%d/%m/%Y')
    elsif tipo=='data_short'
      self.in_time_zone.strftime('%d/%m/%y')
    else
      self.in_time_zone.strftime('%d/%m/%y - %H:%M')
    end
  end

  def com_o_dia dia

    dias_no_mes = Time.days_in_month(self.month, self.year)


    if dia <= dias_no_mes
      Time.new(self.year, self.month, dia, 12).in_time_zone
    else
      Time.new(self.year, self.month, dias_no_mes, 12).in_time_zone
    end

  end

end

class ConstrutorDados

  def self.cria_tipos texto_identado
    
    TipoEquipamento.encode_from_texto_identado(texto_identado)
    
    tipos = {}
    TipoEquipamento.all.each do |te|
      tipos[te.nome] = te
    end

    tipos
  end


end



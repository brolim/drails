
namespace :quadcopter do
  
  desc "description"
  task :start => :environment do

	Quadcopter.start

  	while true
	  	Dir["directions/*"].sort.each do |file_name|
			Quadcopter.move(file_name.split(' ').last)
	  		File.delete(file_name)
	  	end
	  	sleep 0.1
  	end
  end

end

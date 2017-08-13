class 	FacebookPostingController < ApplicationController










def start_posting
	# creating a worker thread 

	if  params["password"].eql?"loveisnoise"
		worker = Workers::Worker.new	
		worker.perform do
		system('ruby script/facebook_script.rb')
		end 

		puts "password was correct"
    else
    	puts "password was wrong"
    end  

      redirect_to "/facebook_posting"

end 




def index


end 








end 
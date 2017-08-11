class 	FacebookPostingController < ApplicationController










def start_posting
	# creating a worker thread 

	if  params["password"].eql?"loveisnoise"
		worker = Workers::Worker.new	
		worker.perform do
		   posting
		end 
		puts "password was correct"
    else
    	puts "password was wrong"
    end  

      redirect_to "/facebook_posting"

end 




def index


end 




def posting 

	begin

	# "SMHoaxSlayer"  "IndianNationalCongress"
	@page = Koala::Facebook::API.new("EAAKY9cESanABAOYZA8oY1Pa4IUMMkINze3fG5tsxlbiopKvWpaC7Gj2tS7LzdVZCyo6LMvfDCl3LB3IPibGAFMSBEaZANOZCMhtSB23tshkMHDVb1QtNWY1ZAQkw2ZA6HZCQsKXZBCBKhlz1V8fRZCxJkZCUT7q1YWhywpr2ilhrPe1fjuLqkTF377")
	name_of_pages = ["SusuSwamy","IronyOfindiaOfficial"]
	@posting_till_date =   Marshal.load File.read('./data/poseted_on_facebook.txt')
	total_post = 0
	name_of_pages.each do |page_name|
	list_of_post = @page.get_connections(page_name, 'posts' , fields:'id,message ,link,story,attachments,source ,likes.summary(true),comments.summary(true)')
	puts "new list of post fetched" + page_name.to_s
		loop do
				list_of_post.each do |post|

					begin
			          if is_post_already_posted post 
						  post_on_page  post
						  total_post = total_post  +1
						  puts"Facebook posting done ." + total_post.to_s
						  @posting_till_date << post["link"]
						  sleep 1200 
			          else 
			          	 puts "post has already been done"
			             
			          end 
					rescue Exception => e
								puts e 
								save_data
								next 
					end	
					 

				end 

	           save_data
			   puts "no more present puting thread to sleep for an hour	"
			   message = "Script has been put to sleep for an hour no of post in this session"  + total_post.total_post
			   send_mails 
			   sleep 3600

		end 
	end 	  


rescue Exception => e
 	message = "Facebook script has been stopped please look at the error and start it"  + e.to_s
 	save_data
 	send_mails message , "Some Error has occured during facebook sharing"
end  



end 



private


def send_mails  message , subject_title
 gmail = Gmail.connect( "buredin.com@gmail.com", "loveisnoise" )
 email = gmail.compose do

	  to  ["sonalchinioti@gmail.com" , "lokesh.vaishnavi@gmail.com"]
	  from    "buredin.com"
	  subject   subject_title
	  
	  #for adding html template 
	  html_part do

		    content_type 'text/html; charset=UTF-8'
		    body  message
	   end

end

#delivering email
email.deliver!
end 


def is_post_already_posted post
@posting_till_date.each do |link_of_post|
 if post["link"].eql?link_of_post 
    		
     return false 
 end 
end
    return true 
end 

def post_on_page post

		#no of likes 
	if  post["likes"]["summary"]["total_count"] > 1
	     #wether a  link is facebook link or outside one 
		if post["link"].include?"www.facebook.com"
			#checking for videos 
	         if post["link"].include?"videos"

	         	 if !post["message"].nil?
	                @page.put_video(post["source"] , { :description => post["message"]})
	                puts"Facebook posting done for videos with message."

	            else
	                 @page.put_video(post["source"] )
	                puts"Facebook posting done for video ."

	            end  

	         elsif post["link"].include?"photos"
	       
	             if !post["message"].nil?
	                @page.put_picture(post["attachments"]["data"][0]["media"]["image"]["src"], "image/png" , {:message => post["message"]})
	                puts"Facebook posting done for photo with message."

	            else
	                @page.put_picture(post["attachments"]["data"][0]["media"]["image"]["src"], "image/png" )
	                puts"Facebook posting done for photo ."

	            end  
	        end 
	         	 
		else
			# without facebook link in story
	       if !post["message"].nil?
		   @page.put_object("buredincom", "feed", "message" => post["message"] ,  "link" => post["link"])
		   	puts"Facebook posting done for link with message ."

	       else 
		   @page.put_object("buredincom", "feed",  "link" => post["link"])
		   	puts"Facebook posting done for link with message ."

	       end 
	      

		end 

	else

       puts "Facebook post like are not enough "

	end  


end 

def save_data
# check_to_trim_file # it will check wether the data present is greater than 1000 if yes then it will trim the array to 500.
serialized_array = Marshal.dump(@posting_till_date)
File.open('./data/poseted_on_facebook.txt', 'w') {|f| f.write(serialized_array) }
end 

def check_to_trim_file
 if @posting_till_date.count > 1000
    @posting_till_date = @posting_till_date[500..-1]
 end 
end 


end 
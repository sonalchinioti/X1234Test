require 'Koala'


sharing_link  =  ARGV[0]

@postd_for_this_session = []

def is_already_posted group_id
@postd_for_this_session.each do |grp_id|
if group_id.eql?grp_id
return false 
end 
end 
return true 
end 

def post group_id , sharing_link
@graph.put_object(group_id, "feed",  "link" => sharing_link)
puts "GrpPosting:posted for this group "+ group_id.to_s
@postd_for_this_session << group_id
sleep 60
end 


#-----------sonal sharing -  -----------#
	puts "posting for sonal"
	# group_id = ["223473587785330", "626561534138620" ,"1050354235023439","798677273502250" ,"AAPKaUP"  ,"186105331856690" ,"1401219453534997" ,"530334387166883","733568336812302" , "232531446907981" ,"342350035861305" , "1573983172820156" ,"931956616861107" ,"495667177157726"]
	group_id = ["931956616861107","495667177157726","481283325377304","151852295243135" ,"701778610000176","133690867036490","1628342030752213","1957689981153993","100853943327682","712440428885940",
       "570673873078821","953968911307777","1144725038945327" ]


	@graph = Koala::Facebook::API.new("EAAKY9cESanABAPc11KpMHbPpYxB1wZAqRBJHZATtsNXOZCTtZBghe5RZCj0XWQfqu5zrYB1E33hnm47PYCrxMlRWIwIjDY8rlTmoMykqegfBOGZBfBZA002p6SZBgrnmcqgEMcGFNAtTKUfcbqT7OSsQKuypeJsbMvKnwUjGnWZCBRgZDZD")
	group_id.each do | group_id |
	begin
	if is_already_posted group_id
	post group_id , sharing_link
	else 
	puts "Already posted for this group."
	end 
	rescue Exception => e
	puts "GrpPosting:Error occured " +e.to_s
	next 
	end
	end


# 495667177157726 mayawati group
# 798677273502250 - congress world 
# AAPKaUP - apputtarpradesh
# 186105331856690 -- Mission 2019 - BJP Bhagao Desh Bachao - बीजेपी भगाओ देश बचाओ
# 1401219453534997 -- Samajwadi Party Online Sena
# 530334387166883 -- Akhilesh Yadav Fans Club & Samajwadi Party Supporter
# 733568336812302 -- MISSION 2019  :::  NEXT PM  RAHUL GANDHI
# kejriwalonlinesena -- ARVIND KEJRIWAL ONLINE SENA
# 342350035861305 - AamAadmiParty


#new  groups
# 931956616861107 ---I Support PRIYANKA GANDHI For Mission 2019
# 223473587785330 -- Aam Aadmi Party (AAP) - BANGALORE
# 1050354235023439 --We Support "Arvind Kejriwal"
# 626561534138620 -- "आप" उत्तर प्रदेश मिशन

#-----closed groups----#
# 324707590901217 - rahul gandhi - sd supporters
# 202434513545804 - rahul gandhi for pm
# 305702809451369 - congress party group


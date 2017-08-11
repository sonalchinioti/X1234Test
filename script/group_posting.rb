

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
	group_id = ["798677273502250" ,"AAPKaUP"  ,"186105331856690" ,"1401219453534997" ,"530334387166883","733568336812302" , "232531446907981" ,"342350035861305" , "1573983172820156" ,"emutiyar" ,"495667177157726"]
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


#--------------------------------------lokesh sharing ---------------------------------#

puts "posting from lokesh"

group_id = ["170949543317348" ,"798677273502250" ,"AAPKaUP"  ,"186105331856690" ,"1401219453534997" ,"530334387166883","733568336812302" , "232531446907981" ,"342350035861305"   ,"495667177157726"]

@graph = Koala::Facebook::API.new("EAAKY9cESanABAANnIhAZAWEJuVrIJwq21JeeNxsUjc4bqIP7jjWJ7VwsHzigdGecH6Ss4MZBsOPTj7gSyKCGSr9Fk61EwpA6HdCuKYF0KtWS5pOSaZBQhlt6itDUgqShmLTe1FGUFBtcyUPRZCCWT7UZCvQbBofXMXc4YZAsd7BwZDZD")
group_id.each do | group_id |
begin
if is_already_posted group_id
post group_id , sharing_link
else 
puts "Already posted for this group."
end 
rescue Exception => e
puts "GrpPosting:Error occured" +e.to_s
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
# 324707590901217 - rahul gandhi - sd supporters
# 202434513545804 - rahul gandhi for pm
# 305702809451369 - congress party group




#-----------------------bure din ----------------------#


puts "bure din posted"
group_id = ["798677273502250" ,"AAPKaUP"  ,"186105331856690" ,"1401219453534997" ,"530334387166883","733568336812302" , "232531446907981" ,"342350035861305"  ,"emutiyar" ,"495667177157726" , "AAPUPMission" ,"170949543317348" , "627045967346557" ,"dalalmedia"]
@graph = Koala::Facebook::API.new("EAAKY9cESanABAO3b0XgGEaAx8Rn4ZCMzPZBZALO8Rj8lSwAiqS50j2dMySZAZCAKbNKe5tVUaNgwFoekKciHkmPGmto996h6bzm1kiFDehMDKacj61GSxzmkC8DgMpfVeSZB0yx1Dp41h3SWXXCbKk7VpSTIItVAJ4sZA3dq9LGpwZDZD")

group_id.each do | group_id |
begin
if is_already_posted group_id
post group_id , sharing_link
else 
puts "Already posted for this group."
end 
rescue Exception => e
puts "GrpPosting:Error occured" +e.to_s
next 
end
end


# 342350035861305 - AamAadmiParty
# 232531446907981 - ARVIND KEJRIWAL ONLINE SENA
# 733568336812302 - MISSION 2019  :::  NEXT PM  RAHUL GANDHI
# AAPUPMission    - "आप" उत्तर प्रदेश मिशन
# 1401219453534997  - Samajwadi Party Online Sena
# 170949543317348 - I support Rahul Gandhi
# 798677273502250 - CONGRESS WORLD
# 495667177157726 - MAYAWATI FANS CLUB
# 627045967346557 - ALL INDIA CONGRESS WORKERS GROUP (ABDUL AZIZ SIDDIQUI)
# dalalmedia - Dalal Media (दलाल मीडिया)
# 116963391818803 - Indian National Congress





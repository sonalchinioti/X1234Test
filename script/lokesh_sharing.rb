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




#--------------------------------------lokesh sharing ---------------------------------#

puts "posting from lokesh"

group_id = ["223473587785330", "626561534138620" ,"1050354235023439","798677273502250" ,"AAPKaUP"  ,"186105331856690" ,"1401219453534997" ,"530334387166883","733568336812302" , "232531446907981" ,"342350035861305" , "1573983172820156" ,"931956616861107" ,"495667177157726"]

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




# 	481283325377304 --- सत्संग, पौराणिक-कहानियां, रीति-रिवाज, भक्ति-ज्ञान, सुविचार💥

# 	151852295243135 --Kapil sharma fanas

# 	701778610000176 -- श्री 420 जूमलेश्रवर महाराज (priyanka and sampada are not part)

# 	133690867036490 -  I Support Indian Army
# 	1628342030752213-  Nastik Nation
# 	1957689981153993 -- Zee News Fans
# 	100853943327682 -- Love You Bihar -- bure din blocked
#     712440428885940 -- Akhileshiyans - priyanka not a PART - ADMIN REQUIRED
#     570673873078821 --Voice Against Corruption (VAC)
#     953968911307777 --B. Chandrakala IAS Fans -- approval
#     1144725038945327 ---Indian(अगर आपको भारतीय होने पर गर्व है तो अपने 50 मित्रों को भी जोड़े!) (priyanka and sampada are not part)
#     146476522591267 - Im With Congress approval (priyanka and sampada are not part)
#     1259089770805471 -- भाजपा हराओ एक हो जाओ (priyanka and sampada are not part)
#     150899088782537 --I     m     back    Congress.........group.(priyanka and sampada are not part) (priyanka and sampada are not part)

#     713996775407495 --  आओ चले विकास की ओर कॉग्रेस की ओर approval

#     1601733250066274 -- BJP Mukt Bharat - 2019 --approval
#     1486159688324138 --vote for AIMIM --approval  (priyanka and sampada are not part)

#     223473587785330   ---  Aam Aadmi Party (AAP) - BANGALORE approval

#     157246061028802 --Titto support rahul gandhi and u approval

#     1050354235023439 --We Support "Arvind Kejriwal" approval

#     494313260716642 --Indian National Congress Group Raj Babbar approval

#     116963391818803 --Indian National Congress approval 
# 627045967346557    -- ALL INDIA CONGRESS WORKERS GROUP (ABDUL AZIZ SIDDIQUI) approval
# 170949543317348 -I support Rahul Gandhi SONAL SAMPADA AND PRIYANKA ARE NOT PART





#     closed groups
#     Congress Party Group --305702809451369
#     RAHUL GANDHI SUPPORTERS - Sd Sharma                      ---324707590901217

#     202434513545804 -Rahul Gandhi For PM
#     1651959655083654 -- भक्तों को मिर्ची लगी, तो मैं क्या करूँ #BKML

#     462568683887213 --Rising Congress





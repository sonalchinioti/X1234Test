
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









puts "chinioti posted"
group_id  =[ "146476522591267" , "1259089770805471" ,"150899088782537", "713996775407495" , "1601733250066274" , "1486159688324138" ,"223473587785330", "157246061028802" , "1050354235023439" , "494313260716642" , "116963391818803" , "627045967346557" , "170949543317348" , "1163648993740709" , "1300130113412650"]

@graph = Koala::Facebook::API.new("EAAKY9cESanABAMCyAcjvbCizQZBD2UfACfGdFA6NYI2kAJ1LPlly2cZBZCwEP5WAZBogPPCtAT1Bx3lTZC2sXZBwehOTKujYi066srIhyTQ6dR2QKDLKiGXCC2RNMaEP6P5TAQLYezDfSxY57DrFOCC54yawEmRYUN8swH8qIp9gZDZD")

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
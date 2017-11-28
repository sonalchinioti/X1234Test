class Posted

  include Mongoid::Document
  include Mongoid::Timestamps
  


  field :link,                       :type => String
  field :page_name,                  :type => String 
  




  def as_json( options={})
  	{
  	 :_id => id.to_s,
  	 :link => option_text 

     }
  end 






end 
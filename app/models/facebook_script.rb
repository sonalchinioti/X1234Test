class FacebookScript

  include Mongoid::Document
  include Mongoid::Timestamps


  field :token,                       :type => String
  field :name ,                       :type => String
  field :page_names,                   :type => Array 


end 
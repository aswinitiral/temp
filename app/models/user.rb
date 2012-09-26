class User < ActiveRecord::Base
  attr_accessible :email, :name, :attach

	validates :name, :presence => true    
    validates :email, :presence => true

    has_attached_file :attach,
   		 :url  => "/db/users/:id/:basename.:extension",
         :path => ":rails_root/db/users/:id/:basename.:extension"




end

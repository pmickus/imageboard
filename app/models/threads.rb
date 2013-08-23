class Threads
  include Mongoid::Document 
  include Mongoid::Paperclip
  
  has_mongoid_attached_file :image, :styles => { :thumb => "300x300>" }, :default_url => "/images/:style/missing.png"
  
  field :title, type: String
  field :comment, type: String

  embeds_many :posts

  validates :title, presence: true
  validates_attachment_presence :image
	
end

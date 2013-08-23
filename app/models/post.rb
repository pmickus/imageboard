class Post
  include Mongoid::Document
  include Mongoid::Paperclip
  
  has_mongoid_attached_file :image, :styles => { :thumb => "300x300>" }
  
  field :comment, type: String

  embedded_in :threads
	
  validates :comment, presence: true

end

class Post
  include Mongoid::Document

  field :comment, type: String

  embedded_in :threads
	
end

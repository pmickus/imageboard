class Threads
  include Mongoid::Document

  field :title, type: String

  embeds_many :posts
	
end

class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, type: String

  validates_presence_of :text
end

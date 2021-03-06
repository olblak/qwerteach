class TopicGroup < ActiveRecord::Base

  has_many :topics, inverse_of: :topic_group
  has_many :lessons

  validates :title, presence: true
  validates :level_code, presence: true

  def pictotype(arg)
    self.picto.insert(-5, "_#{arg}") unless self.picto.nil?
  end

end

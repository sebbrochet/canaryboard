class Event < ActiveRecord::Base
  attr_accessible :message, :indicator_id, :status_id

  belongs_to :indicator
  belongs_to :status

  validates :status_id, presence: true

  default_scope order("created_at DESC")

  def api_return_format
    {
      id: self.id,
      time: self.created_at,
      state: {
        id: self.status.id,
        name: self.status.name
      },
      message: self.message || ""
    }
  end
end

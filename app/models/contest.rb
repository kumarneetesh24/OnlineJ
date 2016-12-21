class Contest
  include Mongoid::Document

  include Mongoid::Timestamps::Created::Short
  field :name,                   type: String, default: ''
  field :ccode,                  type: String, default: ''
  field :state,                  type: String, default: ''
  field :start_time,             type: DateTime, default: DateTime.now
  field :end_time,               type: DateTime, default: DateTime.now + 3.hours
  field :details,                type: String, default: ''

  has_many :problems, dependent: :destroy
  belongs_to :setter, counter_cache: true

end
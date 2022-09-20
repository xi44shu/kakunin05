class Schedule < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :time_zone
  belongs_to :user
  belongs_to :manager
  belongs_to :team
  belongs_to :size
  belongs_to :accuracy
  belongs_to :detail
  belongs_to :detailfirst_contact
  belongs_to :prefecture
  belongs_to :public_utility
  belongs_to :start_time
  belongs_to :trading_company
end

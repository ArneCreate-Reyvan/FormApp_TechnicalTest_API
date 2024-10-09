class Submission < ApplicationRecord
  validates :name, presence: true, format: { without: /\d/, message: "cannot contain numbers" }
  validates :phone_number, presence: true, format: { without: /[a-zA-Z]/, message: "cannot contain letters" }
end

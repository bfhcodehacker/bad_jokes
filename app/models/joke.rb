class Joke < ActiveRecord::Base
  validates :question, :answer => true
end

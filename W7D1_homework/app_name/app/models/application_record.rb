class ApplicationRecord < ActiveRecord::Base
  include BCrypt
  self.abstract_class = true
end

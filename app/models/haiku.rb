class Haiku < ApplicationRecord
    has_many :edits
    accepts_nested_attributes_for :edits
end

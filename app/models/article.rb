class Article < ApplicationRecord
    validates :title, presence: true, length: { maximum:100, minimum:2}
    validates :description, presence: true, length: { maximum:200, minimum:1}
end
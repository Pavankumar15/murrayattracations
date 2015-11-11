class Attraction < ActiveRecord::Base
    def self.all_ratings ; %w[1 2 3 4 5] ; end
    validates :name, :presence => true
end

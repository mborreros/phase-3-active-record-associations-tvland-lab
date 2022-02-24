class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list

    array_of_actors = self.actors
    list_of_actors = []

    array_of_actors.each do |actor|

      list_of_actors << "#{actor.first_name} #{actor.last_name}"
    end

    list_of_actors
  end

end
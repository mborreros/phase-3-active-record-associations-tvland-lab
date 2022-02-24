class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
  "#{self.first_name} #{self.last_name}"
  end

  def list_roles
  
    list_of_characters = self.characters
    array_of_roles = []

    list_of_characters.each do |character|
      array_of_roles << "#{character.name} - #{character.show.name}"
    end
    array_of_roles
    
  end

end
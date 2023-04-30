# app/models/user.rb

class User
  attr_accessor :name, :introduction, :image_url

  def initialize(faker)
    @name = faker.name
    # @introduction = faker.lorem.sentence
    # @image_url = faker.lorem_flickr.image(size: "50x60", search_terms: ['profile'])
  end
end

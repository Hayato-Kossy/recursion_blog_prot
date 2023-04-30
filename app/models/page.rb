class Page
  attr_accessor :title, :paragraphs, :image_url, :author

  def initialize(faker)
    # @title = faker.lorem.word
    # @paragraphs = faker.lorem.paragraphs(number: rand(5..10))
    # @image_url = faker.lorem_flickr.image(size: "320x240")
    @author = User.new(faker)
  end
  
  def show
    @user = User.new(Faker::Name.name)
    @page = Page.find_by(title: params[:title])
  end
end
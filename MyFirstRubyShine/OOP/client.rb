require '../OOP/base_user'
module Models
  class Client < BaseUser
    attr_reader :number_of_posts

    def initialize(name, email, age, deepest_darkest_secret, number_of_posts)
      super(name, email, age, deepest_darkest_secret)
      @number_of_posts = number_of_posts
    end

    def to_s
      super + " | Number of posts: #{number_of_posts}"
    end
  end
end
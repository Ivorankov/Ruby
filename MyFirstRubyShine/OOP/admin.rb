require '../OOP/base_user'
module Models
  class Admin < BaseUser
    attr_reader :number_of_users_banned

    def initialize(name, email, age, deepest_darkest_secret, number_of_users_banned)
      super(name, email, age, deepest_darkest_secret)
      @number_of_users_banned = number_of_users_banned
    end

    def to_s
      super + " | Number of users banned: #{number_of_users_banned}"
    end
  end
end
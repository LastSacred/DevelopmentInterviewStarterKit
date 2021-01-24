class Person
  attr_accessor :id, :display_name, :email_address, :title

  def initialize(attributes = {})
    @id = attributes["id"]
    @display_name = attributes["display_name"]
    @email_address = attributes["email_address"]
    @title = attributes["title"]
  end

  def self.all
    api = SalesloftApi.new

    api.people['data'].map { |person| Person.new(person) }
  end

end
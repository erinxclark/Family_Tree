require 'active_record'
require './lib/name'

database_configuration=YAML::load(File.open('./db/config.yml'))
development_configuration = database_configuration['development']
ActiveRecord::Base.establish_connection(development_configuration)

def welcome
  puts "Who's Your Daddy?!"
  menu
end

def menu
  choice = nil
  until choice == 'e'
    puts "Press 'a' to add a name or 'l' to see all names."
    puts "Press 'e' to exit."
    choice = gets.chomp
    case choice
    when 'a'
      add
    when 'l'
      list
    when 'e'
      puts "Good-bye!"
    else
      puts "Sorry, that wasn't a valid option."
    end
  end
end

  def add
    puts "What is the first name?"
    first_name = gets.chomp
    puts "What is the last name?"
    last_name = gets.chomp
    name = People.new(:first => first_name,:last => last_name)
    name.save
    puts "'#{first_name} #{last_name}' has been added to your family tree."
  end

  def list
    puts "Here is everyone in your database"
    names = People.all
    names.each { |name| puts "#{name.first} #{name.last}"}
  end

# when 'm' children
#   'Who do you want to list children for? Enter full name.'
#
#    Jane Doe - 2 columns
#

  def children
    query = gets.chomp
    mother_id = People.each(:mother)
    if query.first == first_name && query.last == last_name, get(:id)
      #take ID found and compare to everyone's "Mother" ID
    names.each { |name| puts "#{name.first} #{name.last}"}
    end
  end

  welcome

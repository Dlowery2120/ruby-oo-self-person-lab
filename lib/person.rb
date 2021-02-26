# your code here
require 'pry'
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
      @name = name 
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    # def bank_account
    #     @bank_account
    # end
    
    # def happiness=(num)
    #     # if @happiness > 10 
    #     #     @happiness = 10
    #     # if @happiness < 0 
    #     #     @happiness = 0
    #     end




    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end


    # def hygiene
    #     # if @hygiene > 10 
    #     #     @hygiene = 10
    #     # if @hygiene < 0  
    #     #     @hygiene = 0
    #     end


    # def hygiene
    #     @hygiene
    # end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7 
    end

    def get_paid(salary)
       @bank_account = @bank_account + (salary.to_i) 
       "all about the benjamins"

    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
       "Hi #{self.name}!, It's #{person}. How are you?"

       self.happiness += 3
       person.happiness += 3
    end

    def start_conversation(name_with, topic)


    end

end





  stella = Person.new("Stella")
  blanche = Person.new("Blanche")

 # binding.pry

    
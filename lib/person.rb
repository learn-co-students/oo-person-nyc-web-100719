# your code goes here
require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name=name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness=(@happiness-2)
            person.happiness=(person.happiness-2)
            p "blah blah partisan blah lobbyist"
        elsif topic =="weather"
            self.happiness=(@happiness+1)
            person.happiness=(person.happiness+1)
            p "blah blah sun blah rain"
        else 
            p "blah blah blah blah blah"
        end 
    end 
    def call_friend(person)
        self.happiness=(@happiness+3)
        person.happiness=(person.happiness+3)
        p "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins"
    end
    def take_bath
       self.hygiene=(@hygiene+4) 
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene=(@hygiene-3) 
        self.happiness=(@happiness+2)
        p "♪ another one bites the dust ♫"
     end
    def happy?
        @happiness>7
    end 
    def clean?
        @hygiene>7
    end
    def happiness=(index)
        if 10 >= index && index>=0
            @happiness = index
        elsif 0>index
            self.happiness=(0)
        else 
            self.happiness=(10)
        end
        return @happiness 
    end 
    def hygiene=(index)
        if 10 >= index && index>=0
            @hygiene = index
        elsif 0>index
            self.hygiene=(0)
        else 
            self.hygiene=(10)
        end
        return @hygiene 
    end 
end 
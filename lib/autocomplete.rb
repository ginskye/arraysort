

class Autocomplete
    def suggestions partial_word
  
        result = @dictionary.select do |current_word|       #Creates new array result by calling select on our dictionary array
            current_word.start_with?(partial_word)          #Checking that our current word in the loop starts with the "user input" variable, partial_word
        end

        if result.include?(partial_word)                    #Checks if a box in the array contains the exact value of partial word
            result.delete(partial_word)                     #If it does, deletes that value from its current position in the array
            result.insert(0, partial_word)                  #Inserts partial_word to the first position of the array
        end
        
        return result
    end

  

        #result = []                                        #alternate (earlier) version of def suggestions partial_word, initializes result as array

        #@dictionary.each do |current_word|                 #loops within @dictionary array
           # if current_word == partial_word                #if word is exact match, insert that at first position of result array
               # result.insert(0, current_word) 
            #elsif current_word.start_with?(partial_word)   #otherwise, shovels each current_word to result array
                #result << current_word
            #end
        #end
        #return result
    #end

    def add_word word                                       #Function shovels individual strings into the dictionary array
        @dictionary << word
    end

    def add_words words                                     #Function inserts an array of strings into the dictionary array
        words.each do |current_word|                        #Each element within the words array gets shoveled into the dictionary array
            @dictionary << current_word
        end
    end

    def initialize                                          #initializes dictionary as an array within the class, must be initialized within a function in ruby                                              
        @dictionary = []                                    
    end
end

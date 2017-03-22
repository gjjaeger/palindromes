require ('pry')

class String
  define_method(:palindrome_check) do
    initial=self
    word=self.split("")
    newword=[]
    index=word.length()
    word.each() do
      newword.push(word[index-1])
      index=index-1
    end
    newword=newword.join("")
    if (newword==initial)
      "It's a palindrome!"
    else
      "Not a palindrome!"
    end
  end
end

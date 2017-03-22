require ('palindrome_check')
require('rspec')

describe('String#palindrome_check')do
  it("checks if its a palindrome")do
    expect("bob".palindrome_check).to(eq("It's a palindrome!"))
  end
  it("checks if its a palindrome")do
    expect("hello".palindrome_check).to(eq("Not a palindrome!"))
  end
end

require "may29"
describe "May29" do
  context "When testing the May29 class" do
    describe "permutation" do
      it "should accept two strings as arguments" do
        expect{ permutation('','')}.to_not raise_error
      end
      it "should return a boolean answer if two string are permutations"  do
        expect(permutation('','')).to be true
        expect(permutation(' ', ' ')).to be true
        expect(permutation('abc','cab')).to be true
        expect(permutation('aa','aa')).to be true
        expect(permutation('a  a','  aa')).to be true
        expect(permutation('a','aa')).to be false
        expect(permutation('ab','  ab')).to be false
      end
    end
  

    describe "permu_palindrome" do
      it "should accept a string as an argument" do
        expect{ permu_palindrome('')}.to_not raise_error
      end
      it "should return boolean answer if the given string is a permutation of a palindrome"  do
        expect(permu_palindrome('')).to be true
        expect(permu_palindrome(' ')).to be true
        expect(permu_palindrome('aa')).to be true
        expect(permu_palindrome('aba')).to be true
        expect(permu_palindrome('a ba')).to be true
      end
    end

    describe "one_away" do
      it "should accept 2 strings as arguments" do
        expect{ one_away('a','a')}.to_not raise_error
      end
      it "should return a string a boolean answer if "  do
        expect(one_away('a','a')).to be true
        expect(one_away('pale','bale')).to be true
        expect(one_away('pale','ple')).to be true
        expect(one_away('pale','pales')).to be true
        expect(one_away('pale','bake')).to be false
        expect(one_away('a','aaa')).to be false
      end
    end
    describe "string_compress" do
      it "should accept 2 strings as arguments" do
        expect{ one_away('a','a')}.to_not raise_error
      end
      it "should return a string a boolean answer if "  do
        expect(string_compress('a'), 'a')
        expect(string_compress('aa'), 'a2')
        expect(string_compress('aaa'), 'a3')
        expect(string_compress('aaba'), 'a2ba')
      end
    end
  end
end

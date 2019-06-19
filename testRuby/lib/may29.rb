require "rspec"
class May29
  def permutation(str1,str2)
    dict =[]
    str1.each_char{|c| dict.push(c)}
    str2.each_char{|c| dict..delete(c)}
    return !dict.empty?
  end

  def uRLify(str, true_length)
    chars = str.split("")
    space_count = 0
    for i in (chars.length)
        if chars[i] == ' '
            space_count += 1
        end
    end

    new_length = space_count*2 + true_length

    i = true_length - 1
    while i >= 0
        if chars[i] != ' '
            chars[new_length] = chars[true_length]
            new_length -=1
        else
            chars[new_length] = '0'
            chars[new_length-1] = '2'
            chars[new_length-2] = '1'
            new_length -=3
        end
        i -=1
    end
    new_str = "".join(chars)
    return new_str
  end

  def permu_palindrome (str)
      #import defaulted
    chars = str.split(" ").split(//)
    #creat new hash
    hash = Hash.new(0)
    chars.each do |char|
      if hash.include? char
        hash[char] += 1
      else
        hash[char] = 1
      end
    end
    ct = 0
    hash.each_value do |v|
        if v %2 == 1
              ct+= 1
        end
    end
    return ct <2
  end

  def one_insert_away(small_str, big_str)
    count = 0
    i = 0
    j = 0
    while i < small_str.length
        if(small_str[i]!= big_str[j])
            j = j + 2
            count += 1
            if count > 1
                return false
            end
        else
            j = j + 1
        end
        i = i + 1
    end
    return true
  end

  def one_away(str1, str2)
    if str1.length == str2.length
        count = 0
        while i < str1.length
            if(str1[i]!= str2[i])
                count += 1
                if count > 1
                    return false
                end
            end
        end
        return true
    elsif str1.length == str2.length + 1
        one_insert_away(str2, str1)
    elsif str2.length == str1.length + 1
        one_insert_away(str1, str2)
    else
        return false
    end
  end

  def string_compress(str)
    comp_str = ""
    count = 1
    comp_str += string[0]
    i = 0
    while i < str.length do
      if (str[i]== str[i+1])
        count +=1
      else
        if count > 1
          comp_str += str[i]
        end
      end
    end
  end
end
  describe 'May29' do

      describe 'permutation' do
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



      describe 'permu_palindrome' do
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

      describe one_away do
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
      describe 'string_compress' do
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

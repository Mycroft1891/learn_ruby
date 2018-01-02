#write your code here
def echo(a)
  a
end

def shout(a)
  a.upcase
end

def repeat(a, b=2)
  ("#{a}," * b).split(',').join(' ')
end

def start_of_word(w, i)
  w[0,i]
end

def first_word(w)
  w.split(' ')[0]
end

def titleize(w)
  words = ['a', 'and', 'it', 'the', 'over']
  w.capitalize!.split(' ').map{|n| words.include?(n) ? n : n.capitalize}.join(' ')
end

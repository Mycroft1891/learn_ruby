#write your code here
def translate(string)
  v = ['a','e','i','o','u']

  string.split(' ').map do |s|
    case
      when v.include?(s[0])                     then s << 'ay'
      when s[0..1] == 'qu'                      then s << s.slice!(0..1) << 'ay'
      when s[1..2] == 'qu' && !v.include?(s[0]) then s << s.slice!(0..2) << 'ay'
      when v.include?(s[1])                     then s << s.slice!(0) << 'ay'
      when !v.include?(s[2])                    then s << s.slice!(0..2) << 'ay'
      when !v.include?(s[1])                    then s << s.slice!(0..1) << 'ay'
      else s << s.slice!(0) << 'ay'
    end
  end.join(' ')

end

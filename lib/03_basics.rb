def who_is_bigger(a, b, c)
  # recherche si présence de valeur "nil"
  if ((a==nil)||(b==nil)||(c==nil))
    return "nil detected"
  end
  #utilise un hash garder l'ordre des lettre a, b ,c
  # MAis une fois trié , le hash devient array !!!
  hash = { a: a.to_f, b: b.to_f, c: c.to_f}
  hash = hash.sort_by(&:last)
  p hash
  return "#{hash[2][0]} is bigger"

  #arr = []
  #arr << a.to_f
  #arr << b.to_f
  #arr << c.to_f
  #arr.sort!
  #p arr.inspect
  #return arr[2]
end

def reverse_upcase_noLTA(str)
   # inverse chaîne de caractères moins les lettres LTA
  return str.reverse.upcase.gsub(/[LTA]/, '')
end

def array_42(arr)
  #SI position 42 existe: renvoie true, SINON: renvoie false
  return arr.index(42)!= nil ? true : false
end

def magic_array(arr)
  #  # The magic_array function takes an array of number or an array of
  # array of number as parameter and return the same array :
  # - flattened (i.e. no more arrays in array)
  # - sorted
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  # BONUS : You can do this in one line less than 55 chars
  return arr.flatten.uniq.sort.collect{ |x| x*=2 }.select{ |e|  e % 3 != 0}
end

p "who_is_the_bigger"
p who_is_bigger(84, 42, nil)
p who_is_bigger(nil, 42, 21)
p who_is_bigger(84, 42, 21)
p who_is_bigger(42, 84, 21)
p who_is_bigger(42, 21, 84)


p reverse_upcase_noLTA("Tries this at Home, Kids")
p reverse_upcase_noLTA("Ponies loves carrots")
p reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn")

p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])
p array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])

p magic_array([1, 2, 3, 4, 5, 6])
p magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])
p magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8])


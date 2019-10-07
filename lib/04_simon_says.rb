def echo(phrase)
  return phrase
end

def shout(phrase)
  return phrase.upcase
end

def repeat (phrase , number = 2)
	# Valeur par défaut du nombre de repeat est de "zéro"
	# Initialise la nouvelle chaine de caractères
  copy = phrase
  (number-1).times{ copy += " "+phrase}
  return copy
end

def start_of_word(phrase, number = 1)
  return phrase[0..number-1]
end

def first_word(phrase)
  return phrase.split(' ')[0]
end

def titleize(phrase)
	# SI présence "the" ou "and"
  # on ne les met en majuscule que s'ils sont à la 1ère position
  return phrase.split.map!.with_index { |a,i| (i!=0 && (a == "the" || a == "and" )) ? a : a.capitalize }.join(' ')
end

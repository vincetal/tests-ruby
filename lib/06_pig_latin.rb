
def translate(phrase)
  return phrase.split.map! { |e| #Split string pour avoir les différents mots
      if  e[0].match?(/[aeiou]/)
        e+"ay"
      else
        #Compte nombre de consonnes avant première voyelle
        k = 0
        x = e[0]
        while x.match?(/[^aeiou]/)  #Tant que pas de voyelle compte
          x = e[k]
          (e[k-1]+e[k]=="qu")? k+=2 : k+=1 # Si phonène double : incrémente compteur 2 fois
        end

        e[k-1..-1]+e[0..k-2]+"ay" #Sélectionne paties du mot a coller ensemble

      end
    }.join(' ') #Regroupe l'ensemble des mots
end

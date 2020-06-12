### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

  # function not snake_case
  def checkforAce(card)
  # assignment operator used rather than comparison operator
    if card.value = 1
      return true
    else
      return false
    end
  end

  #dif / def typo, parameters not separated by comma
  dif highest_card(card1 card2)
  # no indentation on if
  if card1.value > card2.value
  # should be return card1
    return card
  else
    return card2
  end
  # the below end is for the class because of indentation errors
end
# uneccessary end
end
# below function outside of the class due to the previous errors
# incorrect indentation
def self.cards_total(cards)
# no value assigned to total variable
  total
  for card in cards
    total += card.value
    # returns inside of the loop 
    # '+' operator can't be used in this way to combine strings and integers. 
    # String interpolation better
    return "You have a total of" + total
  end
end
# end missing for class
```

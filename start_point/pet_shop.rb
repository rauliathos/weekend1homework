#Testing pet hop name
def pet_shop_name(shop_name)
  return shop_name [:name]
end

#testing total cash
def total_cash(cash)
  return cash [:admin][:total_cash]
end

#testing adding money
def add_or_remove_cash(pet_shop,amount)
  pet_shop[:admin][:total_cash] = total_cash(pet_shop)+ 10
end

#test remove money
def add_or_remove_cash(pet_shop,amount)
  pet_shop[:admin][:total_cash] = total_cash(pet_shop)- 10
end

#test pets pets_sold
def pets_sold(sold)
  return sold [:admin][:pets_sold]
end


def increase_pets_sold(pet_shop,amount_pets)
  pet_shop[:admin][:pets_sold] = pets_sold(pet_shop) + amount_pets
end

def stock_count(count)
  return count [:pets].count
end



def pets_by_breed(pet_shop,breed)
pet_arr = pet_shop[:pets]
found_pets = []
for pet in pet_arr do
  if pet[:breed] == breed
    found_pets.push(pet)
  end
end
return found_pets
end

# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal("Arthur", pet[:name])
# end


def find_pet_by_name(pet_shop,pet_name)
  pet_arr = pet_shop[:pets]
  for pet in pet_arr
    if pet[:name] == name
      return pet
    else
      return nil
    end
  end
end

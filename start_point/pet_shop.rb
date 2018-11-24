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



def find_pet_by_name(pet_shop,pet_name)
  pet_arr = pet_shop[:pets]
  for pet in pet_arr
    if pet[:name] == pet_name
      return pet
    else
      return nil
    end
  end
end


def remove_pet_by_name(pet_shop, pet_name)
end



def add_pet_to_stock(pet_shop, new_pet)
 pet_shop = pet_shop[:pets].push(new_pet)
end
# @customers = [
#   {
#     name: "Craig",
#     pets: [],
#     cash: 1000
#   },
#   {
#     name: "Zsolt",
#     pets: [],
#     cash: 50
#   }
# ]
# def test_customer_cash
#   cash = customer_cash(@customers[0])
#   assert_equal(1000, cash)
# end
def customer_cash(customer)
  return customer[:cash]
end


# def test_remove_customer_cash
#   customer = @customers[0]
#   remove_customer_cash(customer, 100)
#   assert_equal(900, customer[:cash])
# end

def remove_customer_cash (customer, cash_removed)
 customer[:cash] = customer_cash(customer) - cash_removed
end


# def test_customer_pet_count
#   count = customer_pet_count(@customers[0])
#   assert_equal(0, count)
# end

def customer_pet_count(customer)
  customer[:pets] = customer[:pets].count
end

# @customers = [
#   {
#     name: "Craig",
#     pets: [],
#     cash: 1000
#   },
#   {
#     name: "Zsolt",
#     pets: [],
#     cash: 50
#   }
# ]
#
# @new_pet = {
#         name: "Bors the Younger",
#         pet_type: :cat,
#         breed: "Cornish Rex",
#         price: 100
#       }
# def test_add_pet_to_customer
#   customer = @customers[0]
#   add_pet_to_customer(customer, @new_pet)
#   assert_equal(1, customer_pet_count(customer))
# end

def add_pet_to_customer(customer,new_pet)
  customer[:pets] = customer[:pets].push(new_pet)
end

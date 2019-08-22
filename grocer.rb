def consolidate_cart(cart)
consolidated_cart = {}
cart.each do |item|
  if consolidated_cart[item.keys[0]]
    consolidated_cart[:count] += 1
  else
   consolidated_cart[item.keys[0]] = {
      count: 1,
      price: item.values[0][:price],
      clearance: item.values[0][:clearance]
    }
end
end
p consolidated_cart
end

def apply_coupons(cart, coupons)
  coupons_applied = cart
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

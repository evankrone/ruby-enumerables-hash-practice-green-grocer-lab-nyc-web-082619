def consolidate_cart(cart)
consolidated_cart = {}
cart.each do |item|
  if consolidated_cart[item.keys[0]]
    consolidated_cart[item.keys[0]][:count] += 1
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
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        coup = "#{coupon[:item]} W/COUPON"
        if cart[coup]
          cart[coup][:count] += coupon[:num]
        else
          cart[coup] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon[:item]][:clearance]
            }
          end
           cart[coupon[:item]][:count] -= coupon[:num]
        end
      end
    end
    cart
  end
  
  


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

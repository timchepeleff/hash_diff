o =  { :name => "Tim", :age => 32, :location => { :state => "MA", :city => "Boston" }}

n =  { :name => "Tim", :age => 33, :location => { :state => "CT", :city => "Boston" }}

difference = { :age => [32, 33], :location => { :state => ["MA", "CT"] }}

def diff(o, n)
  new_hash = {}
  unless o == n
    o.keys.each do |k|
      if o[k] == n[k]
        next
      elsif o[k].is_a?(Hash)
        new_hash[k] = diff(o[k], n[k])
      else
        new_hash[k] = [o[k], n[k]]
      end
    end
  end
  new_hash
end

puts diff(o, n)


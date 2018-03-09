def prime?(n)
  bool = true
  if n <= 1
    bool = false
  else
    factors = 2...n
    factors.each do |factor|
      break if factor * factor > n
      n%factor==0 ? bool = false : bool
      break if bool == false
    end
  end
  bool
end

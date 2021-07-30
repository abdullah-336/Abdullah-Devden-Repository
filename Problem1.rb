def safe_place_in_cirle(n,k)
  skip_p=k-1
  kill_p=skip_p+1
  safe_p=kill_p+1
  puts "There are #{n} Person so skipping #{skip_p} i.e remaining #{kill_p} will be killed. Thus, the Safe Position is #{safe_p}"
  return safe_p.to_i
end
puts "Enter the Total Persons in Circle: "
n=gets.chomp
puts "Enter the Skipped Persons in Circle: "
k=gets.chomp
safe_place_in_cirle(n.to_i,k.to_i)
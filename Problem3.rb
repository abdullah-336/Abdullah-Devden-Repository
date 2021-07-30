def isValid(str)
min,max=str.minmax
if min==max || (min+1==max && str.count(max)==1) || (min==1 && str.count(min)==1 && (str-[min]).uniq.size==1)
    puts "Yes, It is Valid String"
else
    puts "No,It is not Valid String"
end
end
puts "Please Enter the String: "
str=gets.chomp
if (str.length<=10**5) && (str.match(".*[a-z].*"))
str=str.bytes.group_by{|i|i}.map{|i,j|j.size}
isValid(str)
else
  puts "Please Enter the String Again in which length should be less than 10^5 and every Character should Belong to ascii[a-z]! "
end
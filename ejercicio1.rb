 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
puts "aumentar el valor de cada elemento"
 b = a.map do |e|
   e+1
 end
puts b

puts "convertir todos los valores a float"

c = a.map do |val|
  val.to_f
end
puts c

puts "convertir los valores a string"
k = a.map do |str|
  str.to_s
end
print k

puts "descartar elementos menores 5"

t = a.reject{|g|g < 5}

puts t

puts "descartar elementos mayores 5"

f = a.select{|s|s < 5}

puts f

puts "obtener la suma de los elementos"

m = a.inject(0){|w , p| w + p}
puts m

puts "agrupar numeros"

q = a.group_by{|num| num.even?}
puts q

puts "agrupar mayores y menores"

r = a.group_by{|num| num > 6}
puts r

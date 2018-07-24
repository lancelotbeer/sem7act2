nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

puts "mayores a 5 letras"
puts nombres.select{|c| c.length > 5}

puts "nombres en minuscula"

 minuscula = nombres.map{ |m| m.downcase}
puts minuscula

puts "nombres mayuscula"

mayuscula = nombres.map{ |n| n.upcase}
puts mayuscula

puts "nombres con P"

o = nombres.select{ |l| l.chars.first == 'P'}
puts o

puts "cantidad de letras"

ñ = nombres.map{|e | e.length }
puts ñ

puts "Eliminar vocales"
j = nombres.map{ |s| s.gsub(/[aeiou]/, '*')}
puts j

option = 1
hash = {firstname: "mark", lastname: "hernandez", age:"34", commune:"macul" ,gender: "M"}
array = []
array.push(hash)
puts array
puts "menu"
puts "1.- Agregar persona"
puts "2.- Editar persona"
puts "3.- Eliminar persona"
puts "4.- Personas ingresadas"
puts "5.- Comunas de personas"
puts "6.- personas 20 y 25 años"
puts "7.- Suma de edades"
puts "8.- Promedio de edades"
puts "9.- Lista de generos"
puts "10.- Salir del programa"

while option !=10
	puts 'Escribe la opcion'
  user_option = gets.chomp.to_i

	case user_option
	when 1
		puts "Agregar persona"
		puts "ingrese nombre"
		nombre = gets.chomp
		puts "ingrese su apellido"
		apellido = gets.chomp
		puts"cual es tu edad"
		edad = gets.chomp
		puts"cual es su comuna"
		comuna = gets.chomp
		puts"cual es tu genero(M o F)"
		genero = gets.chomp
		array << {firstname:"#{nombre}",lastname:"#{apellido}",age:"#{edad}",commune:"#{comuna}",gender:"#{genero}"}
		puts array.last
		redo
	when 2
		puts "Editar datos de persona"
		puts "seleccione numero"
		  array.each.with_index do |elem, i|
			puts " #{i}: #{elem[:firstname]}"
		end
		id = gets.chomp.to_i
		puts "Edite nombre"
		nombre = gets.chomp
		puts "Edite su apellido"
		apellido = gets.chomp
		puts"Edite edad"
		edad = gets.chomp
		puts"cual es su comuna"
		comuna = gets.chomp
		puts"Edite genero(M o F)"
		genero = gets.chomp
		array[id] = {firstname:"#{nombre}",lastname:"#{apellido}",age:"#{edad}",commune:"#{comuna}",gender:"#{genero}"}
		puts array.last
		redo
	when 3
		puts "Eliminar persona"
		puts "seleccione numero"
			array.each.with_index do |elem, i|
			puts " #{i}: #{elem[:firstname]}"
		end
		id = gets.chomp.to_i
		array.delete_at(id)
		puts array.last
	when 4
		puts "Cantidad de elementos en el array: #{array.size}"
		puts array
		redo
	when 5
		array.each do |elem, i|
			puts " #{i}: #{elem[:commune]}"
		end
		redo
	when 6
		puts "edades entre 20 y 25 años"
		 b = array.select{|v| (v[:age].to_i >= 20) && (v[:age].to_i <= 25) }
		 puts b
		redo
	when 7
		puts "suma de todas las edades"
		b = array.select.sum{|v| v[:age].to_i}
		puts b
    redo
	when 8
		puts "promedio de edades"
		b = array.select.sum{|v|v[:age].to_i} / array.size.to_f
		puts b
		redo
	when 9
		puts "lista de generos"
		b = array.group_by{|v|v[:gender] == 'f'}
		puts b
		redo
	when 10
		puts "salio del programa"
		break
	end
end

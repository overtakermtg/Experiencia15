# Ejercicio 3: Contando palabras

# Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. 
# El método debe devolver este valor.
# Crear un método similar para que además reciba -como argumento- un string. 
# En este caso el método debe contar únicamente las apariciones de ese string en el archivo.


def read_whole_file(filename)
	array = File.readlines(filename)
	puts 'cantidad de lineas: ' + array.size.to_s

	words = 0
	for v in array
		words += v.split.size
	end 
	
	print 'cantidad de palabras: ' + words.to_s
end

read_whole_file('Peliculas.txt')

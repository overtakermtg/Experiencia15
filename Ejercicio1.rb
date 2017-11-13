# # Ejercicio 1: Escribiendo un archivo básico

# # Crear un método que reciba dos strings, este método creará un archivo index.html 
# y pondrá como párrafo cada uno de los strings recibidos.

# # Crear un método similar al anterior, que además pueda recibir un arreglo. 
# Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.

# # Crear un tercer método que además pueda recibir un color. 
# Agregar color de fondo a los párrafos.

# # El retorno de los métodos debe devolver nil.


def crea_archivo(str1, str2)
# Crea un nuevo fichero, y escribe
	File.open('index.html', 'w') do |archivo|
		archivo.puts '<p>'+ str1 +'</p>'
		archivo.puts '<p>'+ str2 +'</p>'
	end

end

# crea_archivo('prueba1', 'prueba2')

def crea_archivo_arreglo(str1, str2, arreglo)
# Crea un nuevo fichero, y escribe
	File.open('index2.html', 'w') do |archivo|
		archivo.puts '<p>'+ str1 +'</p>'
		archivo.puts '<p>'+ str2 +'</p>'
		for v in arreglo.sort()
			archivo.puts v
		end
	end
end

# crea_archivo_arreglo('prueba1', 'prueba2', [1,4,3,2,6,5,7,54,3])


def crea_archivo_color(str1, str2, color1, color2)
# Crea un nuevo fichero, y escribe
	File.open('index.html', 'w') do |archivo|
		archivo.puts '<p style="background: ' + color1 + ';">' + str1 +'</p>'
		archivo.puts '<p style="background: ' + color2 + ';">' + str2 +'</p>'
	end

end

# crea_archivo_color('qweqweqweqwe', 'rhjihjhjoht', 'green', 'red')






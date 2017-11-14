# Ejercicio 4: Ejercicio tipo prueba

# Se tiene un archivo con diversos productos, donde la primera columna indica el nombre del producto y el resto de las columnas muestra el stock en distintas tiendas.

# Producto1, 10, 15, 21
# Producto2, 20, 0, 3
# Producto3, 4, 8, 0
# Producto8, 1, 2, NR
# Producto12, NR, 2, NR

# Donde NR significa no registrado.

# Se pide:

# Crear un menú con 5 opciones, se debe validar que la opción escogida sea 1, 2, 3, 4, 5 o 6.

# La opción 1 permite conocer la cantidad de productos existentes. Al seleccionar esta opción, se mostrará un submenú que permitirá:

# a) Mostrar la existencia por productos.
# b) Mostrar la existencia total por tienda.
# c) Mostrar la existencia total en todas las tiendas.
# d) Volver al menú principal.
# Hint: Se debe validar que la opción ingresada sea válida.

# La opción 2 permite que el usuario ingrese el nombre de un producto y el programa responderá con la cantidad de stock total (suma en las bodegas) de ese producto.
# La opción 3 muestra los productos no registrados en cada bodega.
# La opción 4 permite conocer los productos con una existencia total menor a un valor ingresado por el usuario.
# La opción 5 permite registrar un nuevo producto con su respectivo stock en cada bodega. (Hint: abrir el archivo como append).

# Si el usuario ingresa la opción 6 el programa sale, si ingresa cualquier otra opción se debe mostrar que la opción es inválida, y mostrar el menú nuevamente y la opción de elegir.



data = [['Producto1', 10, 15, 21], 
		['Producto2', 20, 0, 3], 
		['Producto3', 4, 8, 0], 
		['Producto8', 1, 2, 'NR'], 
		['Producto12', 'NR', 2, 'NR']]

def menu()
	puts '--+--+--+--+--+--+-- M E N U --+--+----+--+--+--+'
	puts '--+--+--+--+--+--+--+--+--+--+--+--+----+--+--+--'
	puts '1) cantidad de productos existentes.'
	puts '2) stock total x producto.'
	puts '3) productos no registrados por tienda.'
	puts '4) Total menor que X.'
	puts '5) nuevo producto.'
	puts '6) (Salir).'
	puts '--+--+--+--+--+--+--+--+--+--+--+--+----+--+--+--'
end

def menu_sub()
	# sub menu de la opción 1
	puts '--+--+--+--+--+-- SUB M E N U --+--+----+--+--+--'
	puts '--+--+--+--+--+--+--+--+--+--+--+--+----+--+--+--'
	puts 'a) Mostrar la existencia por productos.'
	puts 'b) Mostrar la existencia total por tienda.'
	puts 'c) Mostrar la existencia total en todas las tiendas.'
	puts 'd) Volver atras (Salir).'
	puts '--+--+--+--+--+--+--+--+--+--+--+--+----+--+--+--'
end

def option_of_menu()
	puts '--+--+--+--+--+--+--+--+--+--+--+--+----+--+--+--'
	puts 'Ingrese una opción del menu: '
	opt = gets.chomp
end

def pantalla_submenu()
	opt = ''
	while opt == ''
		opt = option_of_menu().to_s

		case opt
		when 'a'
			print 1
		when 'b'
			print 2
		when 'c'
			print 3
		when 'd'
			print 4
		when 'e'
			pantalla_menu()
		else
			opt = ''
		end
	end
end

def pantalla_menu()
	opt = 0
	while opt == 0
		menu()
		opt = option_of_menu().to_i

		case opt
			when 1
				menu_sub()
				pantalla_submenu()
			when 2
				print 2
				opt = 0
			when 3
				print 3
				opt = 0
			when 4
				print 4
				opt = 0
			when 5
				print 5
				opt = 0
			when 6
				exit()
			else
				opt = 0
		end
	end
end

pantalla_menu()


# -------------------------------------------------------------------------------------------------
# +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
# -------------------------------------------------------------------------------------------------
# +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
# -------------------------------------------------------------------------------------------------
# +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
# -------------------------------------------------------------------------------------------------


def list_product(array)
	puts '--+--+--+--+--+-- P r o d u c t o s --+----+--+--+--'
	array.each do |producto, exist1, exist2, exist3|
		puts "producto: #{producto}, Tienda 1: #{exist1}, Tienda 2: #{exist2}, Tienda 3: #{exist3}"
	end
	puts '--+--+--+--+-- FIN P r o d u c t o s --+----+--+--+-'
end

def list_product_tienda(array, tienda)
	puts '--+--+--+--+--+-- P r o d u c t o s --+----+--+--+--'
	array.each do |producto, exist1, exist2, exist3|
		case tienda
		when 1
			puts "producto: #{producto}, Tienda 1: #{exist1}"
		when 2
			puts "producto: #{producto}, Tienda 2: #{exist2}"
		when 3
			puts "producto: #{producto}, Tienda 3: #{exist3}"
		else
			puts "La tienda no existe"
		end
	end
	puts '--+--+--+--+-- FIN P r o d u c t o s --+----+--+--+-'
end

def list_product_producto(array, producto)
	puts '--+--+--+--+--+-- P r o d u c t o s --+----+--+--+--'

	arr = array.reject { |produ, exist1, exist2, exist3| produ != producto }
	arr.each do |producto, exist1, exist2, exist3|
		puts "producto: #{producto}, Tienda 1: #{exist1}, Tienda 2: #{exist2}, Tienda 3: #{exist3}"
	end
	puts '--+--+--+--+-- FIN P r o d u c t o s --+----+--+--+-'
end


def option_of_tienda()
	puts '--+--+--+--+--+--+--+--+--+--+--+--+----+--+--+--'
	puts 'Ingrese una tienda: '
	opt = gets.chomp.to_i
end

def option_of_productos()
	puts '--+--+--+--+--+--+--+--+--+--+--+--+----+--+--+--'
	puts 'Ingrese una producto: '
	opt = gets.chomp.to_s
end






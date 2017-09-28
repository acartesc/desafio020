module Formula
	def perimetro
		sum = 0
		perim = 0
	#	print self.instance_variables
		self.instance_variables.each do |x|
			sum += self.instance_variable_get(x)
			
			puts x.inspect 
		end
		puts "El perímetro es #{sum}"
	end

	def area
		if self.is_a? Cuadrado
			@lado * @lado
		
		elsif self.is_a? Rectangulo
			@largo * @ancho
		end
	end
end

class Rectangulo
	attr_reader :largo, :ancho
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end
	include Formula
	def lados
		puts "Los lados son: #{@largo}, #{@ancho}"
	end

end

class Cuadrado
	attr_reader :lado
	def initialize(lado)
		@lado = lado
	end
	include Formula
	def lados
		puts "El lado es: #{@lado}"
	end
end

#Agregar un método de instancia llámado lados en ambas clases. El método debe
#imprimir un string con las medidas de los lados.
r = Rectangulo.new(10,20)
c = Cuadrado.new(10)
puts "#############"
r.perimetro
c.perimetro
puts "#############"
puts r.area
puts c.area
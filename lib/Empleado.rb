class Empleado
	attr_accessor :array
	def initialize(b)
		@array=b
	end
	def monto
		salr=Salario.new(@array[0],@array[5],@array[6])
		salr.sueldo
	end
end

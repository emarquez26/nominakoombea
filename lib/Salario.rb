class Salario
	attr_accessor :dtrb, :vdemp,:nom
	def initialize(dtrb,vdemp,nom)
		@nom,@dtrb,@vdemp=dtrb,vdemp,nom
	end
	def sueldo
		"El valor a pagar al empleado #{@nom} es: #{@dtrb.to_i * @vdemp.to_i}"
	end 
end
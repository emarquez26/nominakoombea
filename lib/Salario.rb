class Salario
	attr_accessor :dtrb, :vdemp
	def initialize(dtrb,vdemp)
		@dtrb,@vdemp=dtrb,vdemp
	end

	def sueldo
		@dtrb.to_i * @vdemp.to_i
	end 
end
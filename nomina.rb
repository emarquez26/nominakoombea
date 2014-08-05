load 'lib/Empleado.rb'
load 'lib/Salario.rb'

class Application
	def info
		puts "Nombre del empleado";nom=gets.chomp
		puts "Apellido del empleado";apll=gets.chomp
		puts "Identificacion del empleado";id=gets.chomp
		puts "Telefono del empleado";telf=gets.chomp
		puts "E-mail del empleado";email=gets.chomp
		puts "Dias trabajados por el  empleado";dtrb=gets.chomp
		puts "Valor del dia del empleado";vdemp=gets.chomp
		array=[]
		array.push "#{nom}";array.push "#{apll}";array.push "#{id}";array.push "#{telf}"
		array.push "#{email}";array.push "#{dtrb}";array.push "#{vdemp}"
		calc=Empleado.new(array);puts()
		puts calc.monto
	end
end
Application.new.info
load 'lib/Empleado.rb'
load 'lib/Salario.rb'
require 'highline/import'
load 'lib/nomina.rb'

class Application
  def info
    datos_personales = {
    :nom => ask("Nombre del empleado"),
    :apll => ask("Apellido del empleado"),
    :id => ask("Identificacion del empleado"),
    :telf => ask("Telefono del empleado"),
    :email => ask("Email del empleado"),
    :a_pagar_por_dia => ask("Valor del dia del empleado").to_i,
    :dias_a_pagar => ask("Dias trabajados por el  empleado").to_s
  }
    emp=Empleado.new(datos_personales)
    cal_nomi=Nomina.new(emp,datos_personales[:dias_a_pagar])
    puts cal_nomi.monto_a_pagar(datos_personales[:a_pagar_por_dia])
  end
end
Application.new.info
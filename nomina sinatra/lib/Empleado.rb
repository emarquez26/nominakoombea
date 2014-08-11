class Empleado
  attr_accessor :datos_personales, :salario_mensual

  # datos_personales: guarda todos los datos personales del empleado
    # :nombre, :apellido, :telefono, :id, :email, :a_pagar_por_dia
  # salario_mensual: guarda el salario mensual de un empleado

  def initialize(datos_personales = {})
    @datos_personales=datos_personales
  end

  def salario
    sal = Salario.new(DIAS_LEGAL_MES, @datos_personales[:a_pagar_por_dia])
    @salario_mensual = sal.sueldo
  end

  def to_s
    "Nombre: #{@datos_personales[:nombre]} - Apellido: #{@datos_personales[:apellido]} - Salario: #{@salario_mensual}"
  end
end
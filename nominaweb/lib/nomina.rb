class Nomina

  attr_accessor :empleados, :dias_a_pagar

  DIAS_LEGAL_MES = 30

  def initialize(empleados=[], dias_a_pagar=DIAS_LEGAL_MES)
    @empleados = empleados
    @dias_a_pagar = dias_a_pagar
  end

  def pagar
    datos_nomina = []

    @empleados.each do |emp|
      datos_nomina.push( monto_a_pagar(emp.datos_personales[:a_pagar_por_dia]) )
    end

    return datos_nomina
  end

  def monto_a_pagar(a_pagar_por_dia)
    sal = Salario.new(@dias_a_pagar, a_pagar_por_dia)
    sal.sueldo
  end
end
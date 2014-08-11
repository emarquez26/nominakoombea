@pag=class Application
  def info(valord,valorp)
    datos_personales = {
    :a_pagar_por_dia => valord,
    :dias_a_pagar => valorp
  }
    cal_nomi=Nomina.new(emp,datos_personales[:dias_a_pagar])
    pagar=cal_nomi.monto_a_pagar(datos_personales[:a_pagar_por_dia])
  end
end
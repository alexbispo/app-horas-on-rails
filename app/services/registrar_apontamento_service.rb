class RegistrarApontamentoService
  def registrar(opts)
    pausas = opts[:pausas].map do |inicio, fim|
      Time.zone.parse(fim) - Time.zone.parse(inicio)
    end

    dados_do_apontamento = {
      entrada: Time.zone.parse(opts[:entrada]),
      saida: Time.zone.parse(opts[:saida]),
      pausas: pausas.join(";")
    }

    return Apontamento.create!(dados_do_apontamento)
  end
end

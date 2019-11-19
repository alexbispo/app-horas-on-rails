class RegistrarApontamentoService
  def registrar(opts)
    return Apontamento.create!(opts)
  end
end

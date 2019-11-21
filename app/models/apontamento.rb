class Apontamento < ApplicationRecord
  validates :entrada, presence: true
  validates :saida, presence: true

  validate :entrada_deve_ser_anterior_a_saida, :duracao_das_pausas_deve_ser_numero

  def entrada_deve_ser_anterior_a_saida
    return unless [entrada, saida].all?(&:present?)

    if entrada > saida
      errors.add(:entrada, "o horário de entrada deve ser anterior ao horário de saída")
    end
  end

  def duracao_das_pausas_deve_ser_numero
    return if pausas.nil?

    unless pausas.split(";").all? { |duracao| true if Float(duracao) rescue false }
      errors.add(:pausas, "a duração das pausas deve ser um número")
    end
  end
end

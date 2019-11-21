require 'rails_helper'

RSpec.describe Apontamento, type: :model do
  describe 'inválido' do
    example('apontamento vazio') { expect(subject.valid?).to be false }

    example 'horário de entrada maior que horário de saída' do
      agora = Time.zone.now
      daqui_uma_hora = Time.zone.now + 1.hour

      subject.entrada = daqui_uma_hora
      subject.saida = agora

      expect(subject.valid?).to be false
      expect(subject.errors.details[:entrada].present?).to be true
    end

    example 'duracao das pausas contendo texto' do
      entrou = Time.zone.local(2019, 7, 10, 0)
      saiu = (entrou + 9.hours)

      subject.entrada = entrou
      subject.saida = saiu

      subject.pausas = "teste"

      expect(subject.valid?).to be false
      expect(subject.errors.details[:pausas].present?).to be true
    end
  end

  describe 'válido' do
    example 'apontamento com entrada e saida' do
      entrou = Time.zone.local(2019, 7, 10, 0)
      saiu = (entrou + 9.hours)

      subject.entrada = entrou
      subject.saida = saiu

      expect(subject.valid?).to be true
    end
  end
end

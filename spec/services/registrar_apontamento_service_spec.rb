require 'rails_helper'

RSpec.describe RegistrarApontamentoService, type: :service do
  describe 'deve ser possível registrar um apontamento' do
    example 'registrar apontamento' do
      allow(Apontamento).to receive(:create!).and_return(true)

      opts = {
        entrada: '07/03/2019 06:47',
        saida: '07/03/2019 16:15',
        pausas: [
          ['07/03/2019 11:33', '07/03/2019 12:40']
        ]
      }

      result = subject.registrar(opts)

      inicio_pausa1 = Time.zone.parse('07/03/2019 11:33')
      fim_pausa1 = Time.zone.parse('07/03/2019 12:40')
      duracao_pausa1 = fim_pausa1 - inicio_pausa1

      apontamento_valido = {
        entrada: Time.zone.parse('07/03/2019 06:47'),
        saida: Time.zone.parse('07/03/2019 16:15'),
        pausas: "#{duracao_pausa1}"
      }

      expect(Apontamento.new(apontamento_valido).valid?).to be true
      expect(Apontamento).to have_received(:create!).with(apontamento_valido)
      expect(result).to be true
    end
  end
end

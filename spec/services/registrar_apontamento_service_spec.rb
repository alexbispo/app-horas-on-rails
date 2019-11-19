require 'rails_helper'

RSpec.describe RegistrarApontamentoService, type: :service do
  describe '#registrar' do
    it 'deve registrar um apontamento' do
      # allow(Apontamento).to receive(:create!)

      opts = {
        entrada: '07/03/2019 06:47',
        saida: '07/03/2019 16:15',
        pausas: [
          ['11:33', '12:40']
        ]
      }

      result = subject.registrar(opts)

      # expect(Apontamento).to have_received(:create!)
      expect(result).to be true
    end
  end
end

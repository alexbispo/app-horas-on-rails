# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # {
# #   "docs": [
# #     {
# #       "pausas": [
# #         "65",
# #         "35"
# #       ],
# #       "_id": "5dca20bca3d44d57a48bc565",
# #       "dia": "01/11/2019",
# #       "entrada": "06:51",
# #       "saida": "16:15",
# #       "totalPausas": "01:40",
# #       "totalEmMinutos": 464,
# #       "total": "07:44",
# #       "criadoEm": "2019-11-12T03:02:20.059Z",
# #       "__v": 0
# #     },
# #     {
# #       "pausas": [
# #         "63"
# #       ],
# #       "_id": "5dcb46fb90303d30882cf37a",
# #       "dia": "04/11/2019",
# #       "entrada": "06:54",
# #       "saida": "16:12",
# #       "totalPausas": "01:03",
# #       "totalEmMinutos": 495,
# #       "total": "08:15",
# #       "criadoEm": "2019-11-12T23:57:47.200Z",
# #       "__v": 0
# #     }
# #   ],
# #   "total": 2,
# #   "limit": 10,
# #   "page": 1,
# #   "pages": 1
# # }

# Rails.logger.debug("Começando a plantar as sementes (seeds) de dados...")

# DiaTrabalhado.delete_all
# Rails.logger.debug("Todos os registros da tabela worked_days do banco de dados foram deletados...")

#   # ActiveSupport::Duration.build(retorno_pausa - saida_pausa
# pausas = [
#   (Time.zone.local(2019, 3, 7, 12, 33, 0) - Time.zone.local(2019, 3, 7, 11, 30, 0)),
#   (Time.zone.local(2019, 3, 7, 15, 05, 0) - Time.zone.local(2019, 3, 7, 14, 22, 0))
# ]

# DiaTrabalhado.create(
#   entrada: Time.zone.local(2019, 3, 7, 6, 47, 0),
#   saida: Time.zone.local(2019, 3, 7, 16, 15, 0)
#   pausas: pausas.join(";")

# )

# Rails.logger.debug("Foram criados novos registros na tabela worked_days do banco de dados...")
# Rails.logger.debug("As sementes de dados foram plantadas com sucesso! =)")

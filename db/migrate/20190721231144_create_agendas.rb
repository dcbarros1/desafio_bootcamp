class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.string :paciente
      t.string :medico
      t.string :especialidade
      t.date :agendamento
      t.date :fim_consulta

      t.timestamps
    end
  end
end

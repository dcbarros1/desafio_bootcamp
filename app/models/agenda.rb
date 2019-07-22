class Agenda < ApplicationRecord
    validates :paciente,:medico,:especialidade,:agendamento, :fim_consulta, presence:true
end

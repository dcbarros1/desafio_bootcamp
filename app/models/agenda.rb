class Agenda < ApplicationRecord
    validates :paciente,:medico,:especialidade,:agendamento, presence:true, allow_blank:true
end

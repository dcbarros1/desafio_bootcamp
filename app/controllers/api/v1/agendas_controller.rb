module Api
    module V1
        class AgendasController < ApplicationController
            
            def create
                agenda = Agenda.new(agenda_params)
                if agenda.save
                    render json:{status: 'Agendamento realizado com sucesso', message: 'Agendamento Salvo', data:agenda}, status: :ok
                else
                    render json:{status: 'Falha de agendamento', message: 'Agendamento não salvo', data:agenda}, status: :unprocessable_entity
                end

            end

            private

            def(agenda_params)
                agenda.fim_consulta = agenda.agendamento + 30.minutes
                param.permit(:paciente,:medico,:especialidade,:agendamento,:fim_consulta)
        end

    end
    
end


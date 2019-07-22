module Api
    module V1
        class AgendasController < ApplicationController
            
            def index
                agenda = Agenda.order('created_at DESC')
                render json:{status: 'Sucesso', message: 'Agendamentos', data:agenda}, status: :ok

            end
            
            def create
                agenda = Agenda.new(agenda_params)
                agenda.fim_consulta = agenda.agendamento + 30.minutes
                
                if agenda.save
                    render json:{status: 'Agendamento realizado com Sucesso', message: 'Agendamento salvo', data:agenda}, status: :ok
                else
                    render json:{status: 'Erro no agendamento', message: 'Agendamento não salvo', data:agenda.errors}, status: :unprocessable_entity
            
                end
            end

            private

            def agenda_params
                params.permit(:paciente,:medico,:especialidade,:agendamento,:fim_consulta)
            end
        end
    end
end


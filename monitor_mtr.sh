#!/bin/bash

# Definir o destino para o qual será feito o teste (pode ser um IP ou domínio)
DESTINO="8.8.8.8"

# Caminho do arquivo de log onde os resultados serão armazenados
LOGFILE="/var/log/mtr_monitor.log"

# Criar o arquivo de log se ele não existir
touch $LOGFILE

# Loop infinito para rodar o MTR a cada 15 segundos
while true; do
    # Registrar o horário do teste no log
    echo "📅 $(date '+%Y-%m-%d %H:%M:%S') - Testando conectividade para $DESTINO" | tee -a $LOGFILE

    # Executar o MTR com 10 pacotes por salto e salvar no log
    mtr --report --report-cycles=10 --json $DESTINO | tee -a $LOGFILE

    # Esperar 30 segundos antes do próximo teste
    sleep 30
done

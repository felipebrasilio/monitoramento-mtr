# 📡 MTR Monitor - Monitoramento Contínuo de Rede com Bash

## 📌 Sobre o Projeto
Este script automatiza o monitoramento de conectividade utilizando o **MTR (My Traceroute)**. Ele executa testes contínuos a cada 15 segundos, analisando todos os saltos até o destino e registrando os resultados em um arquivo de log. 🔍📊

## ⚙️ Funcionalidades
✅ Coleta estatísticas detalhadas da rota até o destino.
✅ Identifica latências e perdas de pacotes em cada salto.
✅ Gera logs automáticos para análise posterior.
✅ Executa testes continuamente a cada 15 segundos.
✅ Fácil de implementar e rodar em servidores Linux.

## 🚀 Instalação e Uso
### 1️⃣ **Instalar o MTR**
📌 **No Ubuntu/Debian:**
```bash
sudo apt update && sudo apt install mtr -y
```
📌 **No CentOS/RHEL:**
```bash
sudo yum install mtr -y
```

### 2️⃣ **Baixar o Script**
```bash
git clone https://github.com/seu-usuario/mtr-monitor.git
cd mtr-monitor
```

### 3️⃣ **Tornar o Script Executável**
```bash
chmod +x monitor_mtr.sh
```

### 4️⃣ **Executar o Monitoramento**
```bash
./monitor_mtr.sh
```

Caso queira rodar o script em **background** sem interrupção:
```bash
nohup ./monitor_mtr.sh &
```

## 📂 Estrutura do Projeto
```
📦 mtr-monitor
 ├── 📄 monitor_mtr.sh  # Script principal
 ├── 📄 README.md        # Documentação
```

## 📝 Exemplo de Saída do Log
```log
📅 2025-03-31 12:00:00 - Testando conectividade para 8.8.8.8
{
  "report": {
    "hubs": [
      { "hop": 1, "loss": "0.0%", "avg": "1.2ms" },
      { "hop": 2, "loss": "0.0%", "avg": "3.4ms" }
    ]
  }
}
```

## 🔗 Links Úteis
- [Site Oficial do MTR](https://www.bitwizard.nl/mtr/)

## 🤝 Contribuição
Sinta-se à vontade para contribuir! Abra uma **issue** ou envie um **pull request**.

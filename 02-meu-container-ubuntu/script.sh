echo "=== Logs recentes do sistema ==="
dmesg -T | tail -n 10

echo -e "\n=== Instalando o pacote htop ==="
apt update && apt install -y htop

echo -e "\n=== Pacote htop instalado com sucesso! ==="
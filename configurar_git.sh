#!/bin/bash

# Script interativo para configuração básica do Git

echo "🔧 Iniciando configuração do Git..."

# Solicita nome e e-mail do usuário
read -p "Digite seu nome completo para o Git: " username
read -p "Digite seu e-mail para o Git: " useremail

# Aplica as configurações globais
git config --global user.name "$username"
git config --global user.email "$useremail"

# Editor padrão: VS Code (pode ser alterado)
read -p "Deseja usar o VS Code como editor padrão do Git? (s/n): " usevscode
if [[ "$usevscode" == "s" || "$usevscode" == "S" ]]; then
    git config --global core.editor "code --wait"
fi

# Configurações padrão recomendadas
git config --global color.ui auto
git config --global alias.lg "log --oneline --graph --all --decorate"
git config --global credential.helper cache
git config --global pull.rebase false
git config --global core.autocrlf input
git config --global fetch.prune true
git config --global pull.ff only
git config --global --add safe.directory '*'

# Alias opcional para commit automático com fetch (informativo)
git config --global alias.cf '!git fetch && git commit'

echo -e "\n✅ Configuração concluída!"

# Mostra as configurações atuais
echo -e "\n🛠️ Configurações atuais:"
git config --list

# Mensagem final
echo -e "\n📌 Dica: você pode usar 'git cf' para fazer fetch + commit automaticamente (alias criado)."

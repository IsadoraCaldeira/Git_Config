#!/bin/bash

# Script de configuração básica do Git

echo "🔧 Iniciando configuração do Git..."

# Configurações globais com nome e e-mail fornecidos
git config --global user.name "IsadoraCaldeira"
git config --global user.email "isadora.caldeira@aluno.ifsp.edu.br"
git config --global core.editor "code --wait"
git config --global color.ui auto
git config --global alias.lg "log --oneline --graph --all --decorate"
git config --global credential.helper cache
git config --global pull.rebase false
git config --global core.autocrlf input
git config --global --add safe.directory '*'

echo "✅ Configuração concluída!"

# Mostra as configurações atuais
echo -e "\n🛠️ Configurações atuais:"
git config --list

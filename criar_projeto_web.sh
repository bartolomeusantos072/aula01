#!/bin/bash

clear

# Pergunta ao usuário o nome da pasta
read -p "Digite o nome da pasta a ser criada: " foldername

# Verifica se a pasta já existe
if [ ! -d "$foldername" ]; then
    mkdir -p "$foldername/src"
    
    # Cria os arquivos no diretório recém-criado
    echo "Criando arquivos..."
    touch "$foldername/src/style.css"
    touch "$foldername/src/script.js"
    
    # Estrutura básica do HTML
    echo "<!DOCTYPE html>" >> "$foldername/index.html"
    echo "<html lang=\"pt-br\">" >> "$foldername/index.html"
    echo "    <head>" >> "$foldername/index.html"
    echo "        <meta charset=\"UTF-8\">" >> "$foldername/index.html"
    echo "        <title>Título da Página</title>" >> "$foldername/index.html"
    echo "        <link rel=\"stylesheet\" type=\"text/css\" href=\"./src/style.css\">" >> "$foldername/index.html"
    echo "    </head>" >> "$foldername/index.html"
    echo "    <body>" >> "$foldername/index.html"
    echo "        <h1>$foldername</h1>" >> "$foldername/index.html"
    echo "        <script src=\"./src/script.js\"></script>" >> "$foldername/index.html"
    echo "    </body>" >> "$foldername/index.html"
    echo "</html>" >> "$foldername/index.html"
    
    echo "Arquivos criados com sucesso!"
    read -p "Pressione Enter para continuar..."
else
    echo "Essa pasta já existe."
    read -p "Pressione Enter para continuar..."
fi

# Adiciona o código do alerta ao script.js
echo 'alert("Bem-vindo!");' > "$foldername/src/script.js"

#!/usr/bin/env bash
# Cria diretório para arquivos estáticos
mkdir -p static
mkdir -p staticfiles

# Instala dependências e coleta estáticos
pip install -r requirements.txt
python manage.py collectstatic --noinput --clear
python manage.py migrate



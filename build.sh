#!/bin/sh
# Gera index.html (página completa, pronta para hospedar) a partir de fac-solution.html.
# fac-solution.html é o corpo publicado como artifact; edite sempre ele e rode: sh build.sh
set -e
cd "$(dirname "$0")"
SRC=fac-solution.html
OUT=index.html
{
  printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}[hidden]{display:none!important}</style>\n'
  sed -n '1,/<\/style>/p' "$SRC"
  printf '</head>\n<body>\n'
  sed '1,/<\/style>/d' "$SRC"
  printf '\n</body>\n</html>\n'
} > "$OUT"
echo "Gerado: $OUT"

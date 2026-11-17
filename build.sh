#!/bin/sh
# Gera as páginas completas, prontas para hospedar:
#   fac-solution.html -> index.html               (opção A, completa)
#   minimalista.html  -> minimalista/index.html   (opção B, minimalista)
# Os .html da raiz são os corpos publicados como artifact; edite sempre eles e rode: sh build.sh
set -e
cd "$(dirname "$0")"
wrap() {
  SRC="$1"; OUT="$2"
  mkdir -p "$(dirname "$OUT")"
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
}
wrap fac-solution.html index.html
wrap minimalista.html minimalista/index.html

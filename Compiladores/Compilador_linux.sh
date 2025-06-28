#!/bin/sh

echo "$(pwd)"

auxdir="$(realpath ../Aux)"

resultado="output"

if [ ! -d "${auxdir}" ]; then
    echo "Creando directorio Aux..."
    mkdir -p "${auxdir}"
fi

lualatex --halt-on-error --interaction=nonstopmode --recorder --jobname="${resultado}" --output-directory="${auxdir}" main.tex

makeglossaries -d "${auxdir}" "${resultado}"

biber --input-directory "${auxdir}" --output-directory "${auxdir}" "${resultado}"

lualatex --halt-on-error --interaction=nonstopmode --recorder --jobname="${resultado}" --output-directory="${auxdir}" main.tex

lualatex --halt-on-error --interaction=nonstopmode --recorder --jobname="${resultado}" --output-directory="${auxdir}" main.tex

#!/bin/sh

documento=Documentos/basico.tex

for i in 1 2; do
    lualatex --halt-on-error --interaction=nonstopmode --output-directory=Construccion ${documento}
done

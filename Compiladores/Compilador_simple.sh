#!/bin/sh

obtener_directorios="$(pwd)"
archivo_tex="${obtener_directorios}/../Documentos/Principal.tex"
directorio_construccion="${obtener_directorios}/../Construccion/"

lualatex \
	--halt-on-error \
	--interaction=nonstopmode \
	--output-directory="${directorio_construccion}" \
	"${archivo_tex}"

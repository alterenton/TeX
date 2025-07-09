# TeX
---
# Inclusión de clase y paquete personalizado
- \documentclass{../Clases/Articulo}
- \usepackage{../Paquetes/Fuentes}
---
# Tamaños de letra
```markdown
| Comando         | Tamaño en 10pt | Tamaño en **11pt** | Tamaño en 12pt |
| --------------- | -------------- | ------------------ | -------------- |
| `\tiny`         | 5pt            | **6pt**            | 6pt            |
| `\scriptsize`   | 7pt            | **8pt**            | 8pt            |
| `\footnotesize` | 8pt            | **9pt**            | 10pt           |
| `\small`        | 9pt            | **10pt**           | 10.95pt        |
| `\normalsize`   | 10pt           | **11pt**           | 12pt           |
| `\large`        | 12pt           | **12pt**           | 14.4pt         |
| `\Large`        | 14.4pt         | **14.4pt**         | 17.28pt        |
| `\LARGE`        | 17.28pt        | **17.28pt**        | 20.74pt        |
| `\huge`         | 20.74pt        | **20.74pt**        | 24.88pt        |
| `\Huge`         | 24.88pt        | **24.88pt**        | 24.88pt        |
```
---
# Comparativa de metricas
```markdown
| Unidad | Equivale a                   |
| ------ | ---------------------------- |
| 1 in   | 2.54 cm = 25.4 mm            |
| 1 cm   | 28.45 pt                     |
| 1 mm   | 2.845 pt                     |
| 1 pt   | 0.35146 mm                   |
| 1 em   | ≈ ancho de letra "M" actual  |
| 1 ex   | ≈ altura de letra "x" actual |
```
---
# Problematicas
- No usar la biblioteca matrix en los header o footer
```tex
$\matrix[matrix of nodes] ($(e)!0.5!(g)$) {
  Mantenimiento preventivo del infraestructura Mecano basado en el sistema Pick To Light (PTL)\\
  Brightcell CD Lurín\\
  Informe Técnico Nº 007 - 2025\\
};$
```
---

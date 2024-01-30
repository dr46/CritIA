---
title: 'CritIA: La inteligencia artificial y su impacto sobre la reflexión crítica en educación superior'
output:
  html_document: default
  word_document: default
  pdf_document: default
---

Este proyecto ha sido desarrollado en sincronía con el proyecto de la [OSF](https://osf.io) (Open Science Framework) alojado en la siguiente web: <https://osf.io/ca6yh> y tiene como objetivo proporcionar información y código fuente utilizado para el desarrollo del capítulo titulado "La inteligencia artificial y su impacto sobre la reflexión crítica en educación superior".

Este proyecto contiene varias carpetas. La carpeta *dat* contiene los archivos de datos, la carpetat *stx* contiene archivos de código, la carpeta *tbl* contiene tablas de resultados y la carpeta *fig* contiene figuras. En las siguientes seciones se clarifica la descripción y el contenido de cada carpeta.

# Carpeta *dat*

## pens_critic.xlsx

Este archivo contiene el ranking de las universidades españolas que aparece reflejado en la Tabla 4 del artículo de [Buela-Casal et al (2019)](https://doi.org/10.7334/psicothema2019.238), el contexto en el que aparece mencionado el pensamiento crítico, la web de donde se ha tomado la información (información recolectada el día 21 de enero de 2024, NA significa "no disponible"), y observaciones que se realizaron durante la recogida de datos.

## apela.R

Este archivo contiene dos vectores. Uno de ellos (*apela*) se refiere a si la universidad contempla el pensamiento crítico (con el valor 1) o no (con el valor 0) en su misión, visión o plan estratégico como algo crítico o relevante. El otro vector (*rank*) indica la posición de la universidad en el ranking de [Buela-Casal et al (2019)](https://doi.org/10.7334/psicothema2019.238). 

## caracter.csv

Este archivo contiene dos variables: *cse*: que indica el número de caracteres con espacios que representa el contexto verbal en el que se apela al pensamiento crítico en las misiones, visiones y planes estratégicos de las universidades españolas, y *rank*: que indica la posición que ocupa la universidad estudiada en el ranking  elaborado por [Buela-Casal et al (2019)](https://doi.org/10.7334/psicothema2019.238).

# Carpeta *stx*

## critia_master.R

Este archivo es el documento maestro del proyecto. Desde este archivo se invocan todos los procesos.

## 01_rs.R

Este archivo estima la correlación que se establece entre la posición que ocupa cada universidad en el ranking y si apela o no al pensamiento crítico.También genera el gráfico correspondiente que visibiliza esta relación. Este gráfico aparece almacenado en la carpeta *fig* como *apela.pdf*.

## 02_at.R

Este archivo lleva a cabo ciertos análisis del texto que circunda el concepto de pensamiento crítico. 

## 03_caract.R

Este archivo estima la correlación que se establece entre la posición que ocupa cada universidad en el ranking elaborado por [Buela-Casal et al (2019)](https://doi.org/10.7334/psicothema2019.238) y el número de caracteres que se dedican al contexto en el que aparecen los conceptos de reflexión o pensamiento crítico. 

# Carpeta *fig*

## apela.pdf

Este gráfico representa la posición que ocupan las universidades en el ranking en función de si apelan o no al pensamiento crítico en su misión, visión o plan estratégico.

## wc.pdf

Este gráfico representa la nube de términos que se relacionan con el pensamiento crítico teniendo en cuenta las misiones, visiones y los planes estratégicos de las universidades públicas españolas.

# Carpeta *tbl*

## topw.txt

Es una tabla de frecuencias en el que aparecen las palabras más frecuentes relacionadas con el contexto del aprendizaje o razonamiento crítico. 



# Referencias

-   Buela-Casal, G., Guillén-Riquelme, A., Díaz-Román, A., Carneiro-Barrera,A., y Quevedo-Blasco, R. (2019). Ranking 2019 de las universidades públicas españolas. *Psicothema, 31*(4), 351-362. <https://doi.org/10.7334/psicothema2019.238>

#critia_master.R
 

# Este archivo estima la correlación que se establece entre la posición que 
# ocupa cada universidad en el ranking y si apela o no al pensamiento crítico.
# También genera el gráfico correspondiente que visibiliza esta relación. 
source("stx/01_rs.R", echo = T, encoding = "UTF-8")

# Este archivo analiza los textos que "orbitan" en torno al concepto de pensamiento
# crítico teniendo en cuenta las misiones, las visiones y los planes estratégicos
# de las universidades públicas españolas.
source("stx/02_at.R", encoding = "UTF-8")

# Este archivo contiene una tabla que recoge los diez términos más frecuentes
# que aparecen relacionados con el pensamiento crítico. Se obtiene a partir
# del archivo de código 02_at.R anteriormente presentado.
read.table("tbl/topw.txt")

# Este archivo estima el coeficiente de correlación que se establece entre la 
# posición en el ranking de universidades y el número de caracteres dedicados
# al contexto en el que se apela al pensamiento crítico.
source("stx/03_caract.R", echo = T, encoding = "UTF-8")

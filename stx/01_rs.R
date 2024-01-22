#01_rs.R

source("dat/apela.R")

cor(apela, rank, method = "spearman")
cor.test(apela, rank)
set.seed(46); plot(jitter(apela), rank, axes = F, xlab="Apelación al pensamiento crítico", 
                   ylab = "Posición en el ranking", ylim = c(0,50))

axis(1, at =c(0,1), labels = c("No", "Sí"))
axis(2, las =2)

rm(list = ls())

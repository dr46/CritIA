# 03_caract.R

let <- read.csv("dat/caracter.csv", sep=";")

cor.test(let$cse, let$rank)

rm(list = ls())

# 02_at.R

library(readtext)
library(stringi)
library(quanteda)
library("quanteda.textplots")

text <- readtext("dat/ctx.txt", encoding = "UTF-8")
text <- stri_trim(text)
text <- stri_trans_tolower(text)
text <- stri_replace_all(text, "", fixed =  ",")
text <- stri_replace_all(text, "", fixed =  ".")
text <- stri_replace_all(text, "", fixed =  ",")
text <- stri_replace_all(text, "", fixed =  "crítica")
text <- stri_replace_all(text, "", fixed =  "crítico")
text <- stri_replace_all(text, "", fixed =  ":")


tkns <- tokens(text)
tkns <- tokens_remove(tkns, stopwords::data_stopwords_stopwordsiso$es)

tkns <- tokens_wordstem(tkns)
dtm <- dfm(tkns)
topfeatures(dtm, 10)

topw <- as.table(topfeatures(dtm, 10))
write.table(topw, "tbl/topw.txt")

set.seed(45); textplot_wordcloud(dtm, random_order = FALSE,
                                 rotation = .25,
                                 colors = RColorBrewer::brewer.pal(8, "Dark2"))

rm(list = ls())

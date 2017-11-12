#initialize packages

libs <- c("tm","plyr", "class")
lapply(libs,require,character.only = TRUE)

#set options
options(stringaAsFactors = FALSE)

#clean text

candidates <- c("romney", "obama")
pathname <- "C:/Users/Sneha/New folder"
 cleanCorpus <- function(corpus) {
   corpus.tmp <- tm_map(corpus, removePunctuation)
   corpus.tmp <- tm_map(corpus.tmp, stripWhitespace)
   corpus.tmp <- tm_map(corpus.tmp, tolower)
   corpus.tmp <- tm_map(corpus.tmp, removeWords,stopwords("english"))
   return(corpus.tmp)
}

#build TDM4

generateTDM <- function(cand, path)
{
s.dir <- sprintf("%s%s", path, cand)
s.cor <- Corpus(DirSource(directory = s.dir, encoding = "ANSI"))
s.cor.cl <- cleanCorpus(s.cor)
s.tdm <- TermDocumentMatrix(s.cor.cl)
																																																																													
s.tdm <- removeSparseTerms(s.tdm, 0.7)
result <- list(name = cand, tdm = s.tdm)
}

tdm <- lapply(candidates, generateTDM, path = pathname)
      
#attach name
bindCandidateto TDM <-function(tdm)
{
 s.mat <- t(data.matrix(tdm["tdm"]]))                                                                                                                                                                                                                                                                                             
 s.df <- as.data.frame(s.mat, stringsAsFactors = FALSE)
 
 s.df <- cbind(s.df, rep(tdm[["name"]], nrow(s.df)))
 colnames(s.df)[ncol(s.df)]<- "targercandidate"
 return(s.df)
 }

candTDM <-lapply(tdm, bindCandidateToTDM)

#stack
tdm.stack <- do.call(rbind.fill, candTDM)
tdm.stack[is.na(tdm.stack)]

#training and testing
train-idx <- sample(nrow(tdm.stack), ceiling(nrow(tdm.stack) = 0.7))
test.idx <- (1:nrow(tdm.stack)) [-train.idx]

#model - kNN Model classification
tdm.cand <- tdm.stack[, !colnammes(tdm.stack)%in% "targetcandidate"]

knn.pred <- knn(tde.stack.n1(train,idx, ], tdm.stack.n1(test,idx, ], tdm.cand[train.idx])

#accuracy & confusion matrix displayed

conf.mat <- table("Predictions" =knn.pred, Actual = tdm.cand[test.idx])
accuracy <- sum(diag(conf.mat)) / length(test.idx) = 100)
accuracy
conf.mat 


#display the content and frequency of terms

inspect(stem) 
corpus <- Corpus(DataframeSource(csvpath)) 
findFreqTerms(tdm, 300)  

#plot graph
plot(corpus)
















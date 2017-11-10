#packages_installation
install.packages("rvest")
install.packages("ggplot2")
install.packages("curl")
library(rvest)
library(ggplot2)
library(curl)

#set your directory
setwd("__")

#read the list of links stored in the csv file (this is the file generated from python script)
article<-read.csv("ALLTOPICURL_2.csv")
#empty file generated to write the comments later.
topic1<-read.csv("TestBit.csv")

# columnwise collection
#here we are trying to collect date and comments of every thread in a different combination of columns. 
h<-1

for(i in 1:nrow(article))
{
  page <- read_html(curl(paste("https://bitcointalk.org/index.php?topic=",article[i,1],";all", sep="")))
  l <- html_nodes(page,'.td_headerandpost .smalltext')
  m <- html_nodes(page,'.post')
  Com <- html_text(m)
  Date<- html_text(l)
  s<-length(Date)
  p <-length(Com)
  k <-h+1
  topic1[1:s,h] <- Date
  topic1[1:p,k] <- Com
  print(i)
  print(article[i,1])
  h<-h+2
}
write.csv(topic1,"TestBit.csv")

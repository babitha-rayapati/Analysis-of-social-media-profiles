#cleaning means removal of emoticons and hyperlinks added in tweets

trump.tweets = searchTwitter("trump", n=100)  

#converts to data frame
df <- do.call("rbind", lapply(trump.tweets, as.data.frame))

#remove odd characters i.e emoticons
df$text <- sapply(df$text,function(row) iconv(row, "latin1", "ASCII", sub="")) #remove emoticon

#remove links
df$text = gsub("(f|ht)tp(s?)://(.*)[.][a-z]+", "", df$text) #remove URL
sample <- df$text
library(twitteR)
library(ROAuth)
consumer_key <- "Z3vhCfxgGBflmSox9QJ8MiBpF"
consumer_secret<-"CsulJYARFXKacCtArF37v298e9yYUuEootWicsajxDQ9nZQpkq"
access_token<-"866551377551609856-kUbrlN6fBAIzPwN5WvFKCMsLWZrtK5c"
access_secret<-"uKOF4WeYwtaK6WwWlDAr9fTdspdDf4Zaj5RjRIHXXYOIv"
setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)
cred<-OAuthFactory$new(consumerKey=consumer_key,
                       consumerSecret=consumer_secret,
                       requestURL='https://api.twitter.com/oauth/request_token',
                       accessURL='https://api.twitter.com/oauth/access_token',
                       authURL='https://api.twitter.com/oauth/authorize')
cred$handshake(cainfo="cacert.pem")
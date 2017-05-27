#load words from text files

pos.words=scan('G:/projects/summer_sentiment_analysis/positiveWords.txt',what='character',comment=';')
neg.words=scan('G:/projects/summer_sentiment_analysis/negativeWords.txt',what='character',comment=';')

#add new words from slang
pos.words=c(pos.words, 'congrats', 'thanks', 'thnx', 'Grt', 'gr8')
neg.words = c(neg.words,  'wtf', 'arrest', 'no', 'not','yuck','yuckk')
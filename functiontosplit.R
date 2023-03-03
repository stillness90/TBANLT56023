#this uses a function to split a data set into training
#and validation given the percent

# Split data into training (n%) and validation (1-n%)
get_tr_val<-function(mydat, percnt){
  dt=sample(nrow(mydat), nrow(mydata)*percnt)
  train<-mydat[dt,]
  val<-mydat[-dt,] # Check number of rows in training data set
  l1=list(train, val)
  return(l1)
}
train= 0

val=0
t1=0
v1=0

mydata= read.csv("german_credit.csv")

tset=get_tr_val(mydata, 0.7)
head(tset[1])
df1=as.data.frame(tset[1])
head(df1)
df2=as.data.frame(tset[2])
head(df1)


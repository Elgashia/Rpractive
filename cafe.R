set.seed(1004)   # seed��� ��������ǥ�� �������� ����ǥ 1004���� �����Ѱ��̴�.

stem(rnorm(100)) # �ٱ��ٱ׸�
                 # rnorm�� ���Ժ����� �̷�� ������ �����ϴ� �Լ��̴�.
                 # rnorm(100)�� ���Ժ����� �̷�� ������ ���� 100���� �������� �ǹ�.
ls()
rm(list=ls())

n <- c(1:10)
sample(n,7)

m<-sample(n,100,replace = T,prob = c(1:5,rep(10,5)))
t<-table(m) #���̺��� �󵵼� Ȯ���ϱ�
prop.table(t) #���̺������ �־ ������� Ȯ����

head(airquality)
names(airquality)<-tolower(names(airquality))
names(airquality)<-toupper(names(airquality))

#===============================================================
install.packages("rgl")
library("rgl")

x <- sort(rnorm(1000))
y <- rnorm(1000)
z <- rnorm(1000) + atan2(x,y)

plot3d(x,y,z,col=rainbow(1000))#c("red","blue","orange"))

#===============================================================
data.frame(cars)

data <- cars$speed
mean(cars$speed)
data<15.4

mean(data<15.4) ## ���⼭ ���� 0.52�� �����µ� �̴� ��ռӵ��� ����ġ�� ������ 52%��°�.

Indometh #�����ͼ�

table(Indometh$Subject==1)

mean(Indometh$Subject==1) #Subject code �� 1�ΰ��� 66���� 11���ν� ��뵵���� 16.67% ���� �� �� �ֽ��ϴ�.

#=====================================================

c <- c(20:30)

n <- function(x){
  F <- NULL
  for(i in 1:length(x)){
      F[[i]] <- 9/5*c+32
  return(F)
  }
}
n(c)

# ======== ���Ժ����� Ȯ���е��Լ�(pdf) ========

N.F <- function(x,mu,sigma){
  exp(-(x-mu)^2/{2*sigma^2})/sqrt(2*pi*sigma^2)
}
N.F(1,2,3)
dnorm(1,2,3)

dist(n)

# ======== which() ========

# S�� ���°�� �ִ� ���ڿ��ΰ�?�� ������� �� �Ʒ� �Լ��� ����
which(LETTERS =="S") # [1] 19  <- �̷��� 19��°��.. �ϰ� ���´�.

dicedata <- data.frame(obs=1:100,dice=round(runif(100,1,6)))
attach(dicedata)
dice

which(dice%%2==0) #�̷��� ¦���� �����͸� �̾��ְ�,

dicedata[which(dice%%2==0),] #dicedata�� �࿡�ٰ� �־��ָ� dicedata���� ¦���� �����͵� ���� �̾��ְԵ˴ϴ�.

# ======== ��(��)���� �׷��� �Լ� ========

#points() �Լ��� �� �� �ƹ��� ���غ���� points()�Լ��� ���� �ȴٸ�, ������ �� ���̴�.
#�׷� points()�Լ��� ���� ���ؼ��� plot()�Լ��� ���� �׸��� �׸� �ڿ�
#points()�Լ��� ��� �Ѵ�.

#�׷� plot() �Լ��� ������ �׷��� �Լ����ϰ�,
#plot()���� ���� �׸� �ڿ� ����� �� �ִ� points()�� ������ �׷��� �Լ��� �ȴ�.

plot(cars,pch=20,col="red")
points(c(12,23),c(100,117),pch=3,col="blue")

# ======== sor(), order(), rank() ========

a <- c(86,94,32,64,52,88,100,72)
sort(a) #��������:decreasing=T
order(a)#�������� ������ �����ϱ� ���� �������� ���� ���� ������ Ȯ��
rank(a)

#������ �ȵǾ� �ִ°�?�� Ȯ�� ����
is.unsorted()

b <- c(1:10)
c <- c(1000,1:3,100)
is.unsorted(b)
#is.unsorted()�Լ��� �⺻������ ������������ ������ �Ǿ��ִ����� Ȯ���Ѵ�.
d <- c(200:100)
is.unsorted(d)

#����

swiss[1:3]
dim(swiss) #����6�� ������ 47���� �ǹ�
d <- swiss[1:3]

#���� �����ͼ��� swiss�� �ҷ��� obs�� 3��°������ ���.
swiss[1:3,]
#obs�� ����°���� ù��°�� ù�� �ѷ� ���� ����°�� �̵���Ű�� ���� ���
swiss[c(2,3,1),] #�ε����� ������ �Է�

order(d[1])

d[order(d[1]),]

#----------- ���� ������ 2�� �̻��� ��� -----------

## Fertility�� �ݿø��Ǿ��ִ� �����̰�.
d$Fertility <- round(d$Fertility)
head(d)
## Fertility�� �������� ��������.
d[order(d[1]),]

#�������� ����� order() �Լ��� �켱���� ���� ���� ���ڿ� ������ �ش�Ǵ� 
#value �� �־��ָ� �˴ϴ�

d[order(d[1],d[2]),]

clc
clear 
close all

X=[20,21,22,23,24,25,26,27;2,1,3,6,5,9,2,2]

Y=[75,76,77,78,79,80,81,82;
    3,2,2,5,8,8,1,1]


%a)
meanX=mean(X)
meany=mean(Y)

%b)
varianceX=var(X)
varianceY=var(Y)

%c)
covariance=cov(X,Y)

%d)
correlation=corrcoef(X,Y)


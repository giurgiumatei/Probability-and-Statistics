clc
clear 
close all

n = 5;%number of trials
p = 0.35;%probability

U = rand(n, 1);
X = sum(U < p);
clear X;
%numaral pe coloana de cate ori a aparut 1 si apoi verificam frecv. de
%aparitie a fiecarui element
N =2000;%number of simulations
for i = 1:N
    U = rand(n, 1);
    X(i) = sum(U < p);
end
UX = unique(X);
fr = hist(X, length(UX));
relfr = fr / N;


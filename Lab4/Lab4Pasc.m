clc
clear 
close all

n = 18;
p = 0.35;
for j = 1:n
    Y(j) = 0;
    while(rand >= p)
        Y(j) = Y(j)+1;
    end
end
X = sum(Y);
clear X;

N = 20000;
for i = 1:N
    for j = 1:n
        Y(j) = 0;
        while(rand >= p)
            Y(j) = Y(j)+1;
        end
    end
    X(i) = sum(Y);
end



hist(nbinrnd(n, p, 1, N));
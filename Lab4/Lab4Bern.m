clc
clear 
close all

p=0.35;
N=2000;

%X=rand(1,N);
%Y=X<p;
%s=sum(Y);
%fr_rel=s/N;

%or

y=zeros(1,N);
s2=0;

for i=1:N
    u=rand;
    y(i)=(u<p);
    s2=s2+y(i);
end
fr_rel2=s2/N;

[p fr_rel2]
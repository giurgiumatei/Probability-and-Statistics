clc
clear
close all

N=20000;
p=0.35;
%succes: rand<p

x=zeros(1,N);

for i=1:N
    while rand>=p
        x(i)=x(i)+1;
    end
end

u=unique(x);
fr=zeros(1,length(u));

for j=1:length(u)
    fr(j)=sum(x==u(j));
end

[u;fr/N;geopdf(u,p)]
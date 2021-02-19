clc
clear
close all

n=input('Number of trials= ');
p=input('Probability of succes= ');
x=0:1:n; %variabila poate lua valori de la 0 la n, pasul 1

%a
px=binopdf(x,n,p); %functia de probabilitate pt distributia binomiala, x este variabila unde trebe calculata
fprintf('PDF binomial distribution\n');
disp([x;px]); %afiseaza sub forma de matrice

%varianta daca nu stiam de binopdf
%pxm=zeros(1,n+1); %vector cu valori de 0
%for k=0:n %folosim formula de la curs
 %   pxm(k+1)=nchoosek(n,k)*p^k*(1-p)^(n-k);%indicele trebuie sa fie de la k+1
%end

%pxm

%b
fx=binocdf(x,n,p);
fprintf('CDF binomial distribution\n');
disp([x;fx]);

%varianta daca nu stiam de binocdf
%fxm=zeros(1,n+1); %vector cu valori de 0
%for k=0:n %folosim formula de la curs
 %   fxm(k+1)=sum(pxm(1:k+1));
%end

%fxm

%reprezentare grafica

figure(1)
hold on
plot(x,px,'bo')
title('PDF')

figure(2)
hold on
plot(x,fx,'r')
title('CDF')

figure(3)
hold on
stairs(fx)
title('CDF')
clc
clear
close all
n=3;
p=0.5;

%a
fprintf('a)\n');
x=0:3;
px=binopdf(x,n,p);
fprintf('PDF\n')
disp([x;px]); 

%b
fprintf('b)\n');
x=0:3;
fx=binocdf(x,n,p);
fprintf('CDF\n')
disp([x;fx]); 

%c
fprintf('c)\n');
fprintf('P(X=0)=%f\n',binopdf(0,n,p));

%P(X<>1)=1 - P(x=1)
% ~= ---> diferit in mathlab(sau not egal)
fprintf('P(X<>1)=%f\n',1-binopdf(1,n,p));


%d
fprintf('d)\n');
%P(X<=2)=fx(2)
fprintf('P(X<=2)=%f\n',binocdf(2,n,p));

%P(X<2)=P(X<=1)=P(X<a),a in [1,2]
printf('P(X<2)=%f\n',binocdf(1,n,p));


%e
fprintf('e)\n');
%P(X>1)=1-P(X<=1)=1-FX(1)
fprintf('P(X>1)=%f\n',1-binocdf(1,n,p));

%P(X>=1)=1-P(X<1)=1-FX(0)
fprintf('P(X>=1)=%f\n',1-binocdf(0,n,p));


%ATENTIE!!! N e numarul de jocuri, n numarul de simulari, si is diferite 
%(1 joc= n simulari)

%f
fprintf('f)\n');
N=1000;
U=rand(3,N);
Y=(U<0.5);
S=sum(Y);

vect_vr=zeros(1,4);
for i=1:4
    vect_fr(i)=sum((S==(i-1)));
end

%vect_fr
[x;px;vect_fr/N]
clear;
close;
clc;
x=[1 1 -1 -1 -1 1 1 -1];
N=8;
n=0:7;
k=0:N/2-1;
WkN=exp(-%i*2*%pi*k/N);
f=[];
g=[];
for i=1:length(n)
    if modulo(n(i),2)==0 then
        f=[f x(i)];
    else
        g=[g x(i)];
    end
end
Fk=dft(f,-1);
Gk=dft(g,-1);
//Xk=Fk-WkN*Gk
Xk=Fk-WkN'.*Gk;
Xk=[Xk; Xk];
disp(round(Xk))

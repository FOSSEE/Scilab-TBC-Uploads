//Scilab Code for Example 9.4 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
T=1;
n=1;
for t=-T/2:0.01:T/2;
    x(n)=10*cos(%pi*t/T);
    n=n+1;
end
t=-T/2:0.01:T/2;
plot(t,x);
title('x(t)');
disp('Rxx(0)=Energy of signal');
Rxx=integrate('50*(1+cos(2*%pi*t/T))','t',-T/2,T/2);
disp(Rxx,'Rxx(0)=');

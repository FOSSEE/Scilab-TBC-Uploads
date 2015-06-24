//Ex 1.40.17
clc;clear;close;
format('v',9);

//Given : 
q=1.6*10^-19;//Coulomb
Dn=35;//cm^2/s
x=[0 2];//micro meter
n=[10^17 6*10^16];//per cm^3
plot(x,n);
title('n Vs x');
xlabel('x(micro meter)');
ylabel('n(electrons per cm^3)');
dnBYdx=(n(2)-n(1))/(x(2)-x(1))/10^-4;//gradient
Jn=q*Dn*dnBYdx;//A/cm^2
disp(Jn,"Current density(A/cm^2) : ");

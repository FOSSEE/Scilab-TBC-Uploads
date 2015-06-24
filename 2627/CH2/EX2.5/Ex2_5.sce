//Ex 2.5
clc;clear;close;
format('v',6);
L=0.5;//H
deltaI=2-5;//A
deltaT=0.05;//sec
dIBYdT=deltaI/deltaT;//A/s
emf=L*dIBYdT;//V
disp(emf,"emf induced(V)");

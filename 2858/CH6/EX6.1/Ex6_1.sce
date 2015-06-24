//example 6.1
clc; funcprot(0);
B=30;
L=45;
Df=6.5;
cu=1950;
qunet=5.14*cu*(1+0.195*B/L)*(1+0.4*Df/B);
disp(qunet,"allowed force in lb/ft^2");



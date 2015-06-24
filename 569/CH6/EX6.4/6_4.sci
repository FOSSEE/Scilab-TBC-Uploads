// calculating output voltage due to offset voltage
clc;
Vos=5*10^-3;
Rf=10;
R1=1;
Vo=-Vos*(1+Rf/R1);
disp(Vo,'output voltage due to offset voltage (V)=')
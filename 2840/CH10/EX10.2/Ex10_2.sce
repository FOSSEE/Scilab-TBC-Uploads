clc;
sx=0.01 //in ev. where x=E-Ef
x1=sx*1.6*1e-19 //converting it in joule
T=200 //in kelvin
Fe=1/(1+exp(x1/(1.38*1e-23*T)));//The value of F(E) 
disp(Fe,'The value of F(E) =')

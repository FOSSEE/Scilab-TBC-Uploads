//Ex 6.9
//Obtain the Bode plot
clc;
s=poly(0,'s');
H=syslin('c',8*(1+.1*s)/(s*(1+.5*s)*(1+.6*s/50+(s/50)^2)));
bode(H,0.01,2000);
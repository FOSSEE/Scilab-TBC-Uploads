//DTFT and steady state response 
a=0.8,b=1;F=0;
n=0:50;
h=(a^n);
x=4*[ones(1:10)];
H=h*exp(-%i*n'*F)
Yss=H*x
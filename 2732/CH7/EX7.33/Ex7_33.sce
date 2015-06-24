clc
//initialization of new variables
clear
L=50 //cm
k=15 //cm
I=200 //cm^4
II=40 //cm^4
d=30 //cm
Pd=40 //cm
E=0.6667*10^6 //kg/cm^2
//calculations
delta=(100*10/2*16.33+L*d*35+L*k/2*25+d*k/2*45)
delta1=delta/E
//Results
printf('deflection = %.2f mm',delta1*10^1)

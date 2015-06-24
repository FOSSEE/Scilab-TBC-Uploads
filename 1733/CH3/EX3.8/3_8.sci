//3.8
clc;
toff=12*1.5*10^-6;
f=4000;
wt=2*%pi*f*toff;
Xl=10;
R=2;
Xc=R*tan(wt)+Xl;
C=1/(2*%pi*f*Xc)*10^6;
printf("Value of C for proper load commutation = %.2f uF", C)

//Exa:5.1
clear;
close;
//Given:
fn=5*10^7;//in ohms
gm=(9*10^-3)/8;
C=50*10^-12;
Cx=gm/2*%pi*fn;
r=sqrt(1+Cx/C);
u=0.0173*fn;
Fv=2*u;
printf("\n frequency variation = %f MHz",Fv/10^6);
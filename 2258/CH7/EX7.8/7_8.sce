clc();
clear;
// To calculate the concentration of intrinsic charge carriers
KB=1.38*10^-23;
T=300;   //temp in K
h=6.626*10^-34;
m0=9.11*10^-31;
mh=m0;
me=m0;
EgeV=0.7;    //energy gap in eV
Eg=EgeV*1.6*10^-19;    //in J
A=((2*%pi*KB/(h^2))^(3/2))*(me*mh)^(3/4);
B=T^(3/2);
C=exp(-Eg/(2*KB*T));
ni=2*A*B*C;
printf("concentration of intrinsic charge carriers per cubic metre is");
disp(ni);

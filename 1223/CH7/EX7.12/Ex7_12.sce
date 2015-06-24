clear;
clc;
//Example 7.12
Kn=0.25;
Vtn=1;
Cgd=0.04*10^-3;
Cgs=0.2*10^-3;
Vgs=3;
gm=2*Kn*(Vgs-Vtn);
printf('\ntransconductance =%.3fmA/V\n',gm)
fT=gm/(2*%pi*(Cgd+Cgs));
printf('\nunity gain bandwidth=%.f MHz\n',fT)

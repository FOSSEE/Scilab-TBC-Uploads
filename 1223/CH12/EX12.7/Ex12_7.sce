clear;
clc;
//Example 12.7
Ri=50;
R1=10;
R2=90;
Av=10^4;
bv=1/(1+R2/R1);
printf('\nfeedback transfer function=%.2f\n',bv)
Rif=Ri*(1+bv*Av);
Rif=Rif*0.001;//Mohm
printf('\ninput resistance=%.2f MOhm\n',Rif)

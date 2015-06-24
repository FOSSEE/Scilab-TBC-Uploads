clc;
close();
clear();
//page no 418
//prob no. 12.15
//Absolute gains
G1=20;
G2=15;
G3=12;
//Temp in K
Te1=100;
Te2=200;
Te3=300;
//Noise figures
F1=1+Te1/290;
F2=1+Te2/290;
F3=1+Te3/290;
F=F1+(F2-1)/G1+(F3-1)/G1/G2;
mprintf('Noise figure ,F=%.4f\n',F);
Te=(F-1)*290;

mprintf('Noise Temperature ,Te=%.0f K\n',Te);

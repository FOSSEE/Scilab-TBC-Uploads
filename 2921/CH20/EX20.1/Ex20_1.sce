clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-20.1 Page No.431\n');

//L10 design life
Cd=5050;
Pd=2400;
k=3;
Ld1=(Cd/Pd)^k*10^6;
Ld=Ld1/(1750*60);

mprintf('\n L10 design life = %f hr.',Ld);

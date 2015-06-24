//EX3_26 PG-3.60
clc
Rl=1000;
C=500e-3
f=50;
Rf=(4*sqrt(3)*f*C*Rl)^(-1);//ripple factor
Rf=Rf*1e6;
printf("\n ripple factor is %.2f 10^(-6) \n",Rf)

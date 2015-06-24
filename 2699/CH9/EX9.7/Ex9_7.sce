//EX9_7 PG-9.21
clc
C=1000e-12;
C1=C;
C2=C;
f=500e3;
Ceq=(C1*C2)/(C1+C2);
L=1/(4*%pi^2*f^2*Ceq);//since f=1/(2*%pi*sqrt(L*Ceq));
L=L*1e6;
printf("\n Therefore L=%.3f micro H \n",L)


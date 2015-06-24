//EX9_8 PG-9.21
clc
C1=100e-12;
C2=50e-12;
f=10e6;
Ceq=(C1*C2)/(C1+C2);
L=1/(4*%pi^2*f^2*Ceq);//f=1/(2*%pi*sqrt(L*Ceq));
L=L*1e6;
printf("\n Therefore inductor L = %.1f microH \n",L)

//EX9_6 PG-9.20
clc
L=50e-6;
C1=150e-12;
C2=1.5e-9;
Ceq=(C1*C2)/(C1+C2);
f=1/(2*%pi*sqrt(L*Ceq));
f=f*1e-6;
printf("\n Therefore frequency of oscillation is %.3f MHz \n",f)

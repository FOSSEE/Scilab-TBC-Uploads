//EX9_5 PG-9.20
clc
L=100e-6;
f=500e3;
disp("We know that for a colpitts oscillator f=1/(2*%pi*sqrt(L*Ceq))")
Ceq=1/(f^2*4*%pi^2*L)
Ceq1=Ceq*1e9;
printf("\n Ceq = %.5f nF \n",Ceq1)
//C1=C2=C
C=Ceq1*2;//Ceq=(C*C)/(C+C)
printf("\n Therefore C = %.5f nF \n",C)

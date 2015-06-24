clc;
clear;
printf("\t\t\tChapter2_example9\n\n\n");
// determination of heat transferred
k=136; // thermal conductivity of aluminium in BTU/(hr.ft.degree Rankine)from appendix table B1
L=9/(8*12);
W=9/(4*12);
delta=1/(32*12);
printf("\nLength=%.5f ft, Width=%.4f ft, Delta=%.6f ft",L,W,delta);
hc=0.8; // the convective heat transfer coefficient estimated as 1 BTU/(hr.ft^2. degree Rankine)
T_w=1000;// the root temperature in degree fahrenheit
T_inf=90; // the ambient temperature in degree fahrenheit
m=sqrt(hc/(k*delta));
printf("\nThe value of m is %.3f",m);
P=2*W;
A=2*delta*W;
printf("\n\t\t\tSolution to part (a)\n");
qz1=sqrt(hc*P*k*A)*(T_w-T_inf)*(sinh(m*L)+(hc/(m*k)*cosh(m*L)))/(cosh(m*L)+(hc/(m*k)*sinh(m*L)));
printf("\nThe heat transferred is %.2f BTU/hr",qz1);
printf("\n\n\t\t\tSolution to part (b)\n");
qz2=sqrt(k*A*hc*P)*(T_w-T_inf)*tanh(m*L);
printf("\nThe heat transferred is %.2f BTU/hr\n",qz2);
printf("\n\t\t\tSolution to part (c)\n");
Lc=L+delta;
qz3=k*A*m*(T_w-T_inf)*tanh(m*L*(1+delta/Lc));
printf("\nThe heat transferred is %.2f BTU/hr\n",qz3);

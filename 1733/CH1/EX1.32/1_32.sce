//1.32
clc;
ns=12;
Vd=800;
V=16000;
Ib=10*10^-3;
dQ=150*10^-6;
C=0.5*10^-6;
R=56*10^3;
Vd=(V+(ns-1)*R*Ib)/ns;
printf("maximum steady state voltage rating of each thyristor = %.2f V",Vd)
De=1-(V/(ns*Vd));
printf("\nSteady state voltage derating = %.3f ",De)
Vd=(V+(ns-1)*(dQ/C))/ns;
printf("\nmaximum transient state voltage rating of each thyristor = %.2f V",Vd)
De=1-(V/(ns*Vd));
printf("\ntransient state voltage derating = %.3f ",De)
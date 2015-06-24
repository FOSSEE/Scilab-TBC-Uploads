clear;
clc;
L=0.5*(10^-3);C=0.01*(10^-6);Rk=600;
L1=2*L;
C1=C/2;
L2=Rk*Rk*C1;
C2=L1/(Rk*Rk);
printf("The elements of the shunt arm will be an inductance of %f mH in parallel with a capacitance of %f microfarads",L2*(10^3),round(C2*(10^10))/10^4);

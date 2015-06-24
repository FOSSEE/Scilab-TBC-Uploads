//Chapter 9, Problem 21, Figure 9.11
clc;
dI=6-1;
dt=200*10^-3;
E=15;
Np=1000;
Ns=480;
M=E/(dI/dt);
S=(Np*Ns)/M;
Lp=Np^2/S;
printf("Mutual Inductance = %f H\n\n\n",M);
printf("Reluctance = %d A/Wb\n\n\n",S);
printf("Primary self-inductance Lp = %f H",Lp);

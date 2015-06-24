clear;
clc;
D=20;Ro=75;
N=10^(D/20);
R1=Ro*(N-1)/(N+1);
R2=Ro*2*N/((N*N)-1);
printf("R1 = %f ohms\n",round(R1*100)/100);
printf(" R2 = %f ohms\n",round(R2*100)/100);

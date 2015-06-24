// 2.2
clc;
P=100*10^3;
A=1500*10^-6;
F=P*A;
Cs=F/3;
Ls=Cs+40;
printf("Natural length of spring = %.2f mm", Ls)
P1=10*10^3;
F1=P1*A;
Ss=3+2*.5;
D=F1/Ss;
printf("\nDisplacement of point C = %.2f mm", D)

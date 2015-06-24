clear;
clc;
V_s=sqrt(2)*230;    //V
L=15*10^-6;    //H
I=V_s/L;    //I=(di/dt)_max
printf("(di/dt)_max=%.3f A/usec",I/10^6);
R_s=10;  //ohm
v=I*R_s;    //v=(dv/dt)_max
printf("\n(dv/dt)_max=%.2f V/usec",v/10^6);

f=50;    //Hz
X_L=L*2*%pi*f;
R=2;
I_max=V_s/(R+X_L);    printf("\nI_rms=%.3f A",I_max);
disp("when conduction angle=90");
FF=%pi/sqrt(2);
I_TAV=I_max/FF;    printf("I_TAV=%.3f A",I_TAV);
disp("when conduction angle=30");
FF=3.98184;
I_TAV=I_max/FF;    printf("I_TAV=%.3f A",I_TAV);

printf("\nvoltage rating=%.3f V",2.75*V_s);//rating is taken 2.75 times of peak working voltage unlike 2.5 to 3 times as mentioned int book.
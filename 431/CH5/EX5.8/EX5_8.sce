//chapter 5
//example 5.8
//page 429
clear;
clc;
disp("example 5.8");
disp("P=6   , f=50");
P=6;
f=50;
Sp=12;         //slots per pole
Cs=4;         //conductors per slot
Fp=1.5; 
TS=Sp*P 
printf("total number of slots=%d\n",TS);
printf("total number of slots per phase= %d\n", (TS/3));
printf("total number of conductors per phase= %d\n", ((TS*Cs)/3));
T=((TS*Cs)/3)/2;
printf("total number of turns per phase=%d\n",T)
m=(TS/(P*3));
printf("number of slots per pole per phase,m= %d\n",m);
SA_m=360/TS;             //slot angle mechanical
SA_e=(P/2)*SA_m;
k_d=sind((m*SA_e)/2)/(m*sind(SA_e/2));
printf("distribution factor=%f\n\n",k_d);
disp("coil pitch is 5/6 of full-pitch");
printf("\n");
bheta=180-(5/6)*180;     //short pitch angle
printf("short pitch angle= %d degrees\n",bheta)
k_p=cosd(bheta/2);
printf("pitch factor= %f \n",k_p);
E=4.44*Fp*f*T*k_d*k_p;
printf("induced per phase=  %fV\n",E)
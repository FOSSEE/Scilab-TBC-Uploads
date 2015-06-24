//chapter 5
//example 5.5
//page 427
clear;
clc;
disp("example 5.5");
disp("E(line to line)=  440V");
E_l=440;    //line-to-line voltage
E_p=E_l/(sqrt(3));
N=750;      //speed in rpm
fre=50;     //frequency
P=(120*fre)/N;
printf("P=  %d\n",P);
printf("E(per phase)=  %dV\n",E_p);
ph=3;       //3-phase machine
m=2;        //number of slots per pole per phase
slots=m*P*ph;       //total number of stator slots
SA_m=360/slots;     //slot angle mechanical
SA_e=(P/2)*SA_m;    //slot angle electrical
k_p=1;              //assuming full pitch
printf("slot angle=  %d degree electrical\n",SA_e);
printf("pitch factor=%f\n",k_p);
k_d=sind((m*SA_e)/2)/(m*sind(SA_e/2));
printf("distribution factor=  %f\n\n",k_d);
//2 slots per pole per phase
NSp=2*P;            //number of slots per phase
NTc=4;              //number of turns per coil
T=8*NTc;            //number of turns per phase
Fp=E_p/(4.44*fre*T*k_d*k_p);
printf("flux per pole=  %fWb\n",Fp);
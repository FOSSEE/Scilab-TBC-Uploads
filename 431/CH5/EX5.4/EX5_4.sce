//chapter 5
//example 5.4
//page 426
clear;
clc;
disp("example 5.4");
printf("\n");
slots=72;    //number of slots
P=8;         //number of poles
ph=3;        //3-phase machine
N=750;       //speed of machine in rpm
//winding is made with 36 coils having 10 turns
Fp=0.15;     //flux per pole
fre=(P*N)/120;
NCp=36/ph;   //nmber of coils per phase
T=NCp*10;    //number of turns per phase
k_p=1;       //since full pitched pitch factor is 1
printf("flux per pole=%fWb\n",Fp)
printf("number of turns per phase=%d\n",T);
printf("pitch factor=%f\n",k_p);
m=slots/(P*ph); //slots per pole per phase
SA_m=360/slots; //slot angle mechanical
SA_e=(P/2)*SA_m;
k_d=sind((m*SA_e)/2)/(m*sind(SA_e/2));
printf("distribution factor=%f\n",k_d);
E=4.44*Fp*fre*T*k_d*k_p;
printf("RMS vale of emf induced per phase=%fV\n",E)
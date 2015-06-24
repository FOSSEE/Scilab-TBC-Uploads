//chapter 5
//example 5.6
//page 428
clear;
clc; 
disp("example 5.6");
printf("\n");
slots=144;   //number of slots
ph=3;        //3-phase machine
P=16;        //number of poles
Cp=10;       //number of conducters per slot
Fp=0.03;     //flux per pole
Ns=375;      //synchronous speed
fre=(Ns*P)/120;     //frequency
printf("frequency=%d\n\n",fre);
m=slots/(P*ph);     //number of slots per pole per phase
printf("number of slots per pole per phase,m=  %d\n",m);
SA_m=360/slots;     //slot angle mechanical
SA_e=(P/2)*SA_m;    //slot angle electrical
k_p=1               //no short pitching
printf("short pitch=  %d\n",k_p);
k_d=sind((m*SA_e)/2)/(m*sind(SA_e/2));
printf("distribution factor=  %f\n",k_d);
T=(slots*10)/(2*ph);
printf("number of turns per phase,T=  %d\n",T);
E=4.44*Fp*fre*T*k_d*k_p;
printf("RMS value of induced emf per phase,E=  %fV\n",E);
printf("induced emf across the linesis %fV \n",(sqrt(3)*E));
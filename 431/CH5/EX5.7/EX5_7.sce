//chapter 5
//example 5.7
//page 428
clear;
clc;
disp("example 5.7");
printf("\n");
slots=90;   //number of slots
P=10;       //number of poles
ph=3;       //3-phase machine
fre=50;     //frequency
Fp=0.16;    //flux per pole
E_l=11000;  //line voltage
SA_m=360/slots;  //machanical slot angle
SA_e=(P/2)*SA_m; //electrical slot angle
m=slots/(ph*P);
printf("slot angle=%d degree elecrical\n",SA_e)
printf("number of slots per pole per phase,m=%d\n",m);
k_p=1;           //assuming full pitch
printf("pitch factor=%d\n",k_p);
k_d=sind((m*SA_e)/2)/(m*sind(SA_e/2));
printf("distribution factor=%f\n\n",k_d);
E_p=E_l/sqrt(3);
T=E_p/(4.44*Fp*fre*k_p*k_d); 
printf("total number of armature conductors,Z= %d",(2*T));

//Calculating new full load speed
//Chapter 4
//Example 4.15
//page 310
clear;
clc; 
disp("Example 4.15")
f=50;.....................//frequency of induction motor in hertz
P=4;                        //number of poles
Nr=1440;                    //rotor speed in rpm
R2=0.1;                    //rotor resistance in ohms
X20=0.6;                    //rotor standstill resistance in ohms
Ns=(120*f)/P;
printf("Synchronous speed=%drpm",Ns);
S1=(Ns-Nr)*(100/Ns);
printf("Full-load slip with rotor resistance,R2 i.e. S1=%f",S1);
disp("on adding extra resistance o.1ohm")
//on solving we get S2=0.08
S2=0.08;
Nr2=Ns*(1-S2);
printf("\nNew rotor speed=%drpm",Nr2);


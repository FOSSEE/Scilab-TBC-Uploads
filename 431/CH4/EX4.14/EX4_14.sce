//Calculating standstill rotor reactance
//Chapter 4
//Example 4.14
//page 310
clear;
clc; 
disp("Example 4.14")
f=50;.....................//frequency of induction motor in hertz
P=6;                        //number of poles
ph=3;                    //Three phase supply
R2=0.1;                    //rotor resistance in ohms
Ns=(120*f)/P;
printf("Syncronous speed,Ns=%drpm",Ns);
Nr=940;                    //rotor speed in rpm
S=(Ns-Nr)/Ns;
printf("\nSlip,S=%f",S);
printf("\nstandstill rotor reactance,X20=%fohms",(R2/S));


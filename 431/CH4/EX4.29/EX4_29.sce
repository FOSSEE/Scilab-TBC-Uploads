//Calculate full load speed
//Chapter 4
//Example 4.29
//page 334
clear;
clc; 
disp("Example 4.29")
V=400;                    //voltage in volts
f=50;                    //frequency in hertz
P=4;                    //number of poles
//r1=(Ts/Tfl)
r1=1.6;
//r2=(Tm/Tfl)
r2=2;
//r3=(Ts/Tm)=(2*a)/(1+a^2)
r3=0.8;
//on solving , we get a=0.04  ,
a=0.04;
Sm=0.04;   //slip at maximium torque
printf("Slip at maximium torque,Sm=%f",Sm)
Ns=(120*f)/P;            //synchronous speed in rpm
Nr=Ns*(1-Sm)             //rotor speed in rpm
//r2=(a^2+Sfl^2)/(2*a*Sfl)
Sfl=0.01;
Nr2=Ns*(1-Sfl);
printf("\nfull load speed,Nr=%drpm",Nr2)

//Calculating starting torque
//Chapter 4
//Example 4.16
//page 311
clear;
clc; 
disp("Example 4.16")
f=50;                    //frequency in hertz
P=4;                    //number of poles
R2=0.04;                    //rotor resistance in ohms
Ns=(120*f)/P;
printf("Syncronous speed=%drpm",Ns);
Nr=1200;                //rotor speed at maximium torque in rpm
S=(Ns-Nr)/Ns;
printf("\nSlip at maximium torque=%f",S);
X20=R2/S;
//starting torque is developed when S=1
//r=(Tst/Tm)
r=(R2/(R2^2+X20^2))*(2*X20);
printf("\nTherefore, starting torque is %fpercent of the maximium torque",(r*100));

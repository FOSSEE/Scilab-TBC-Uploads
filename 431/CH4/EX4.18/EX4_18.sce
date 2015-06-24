//Calculating external resistance
//Chapter 4
//Example 4.18
//page 313
clear;
clc; 
disp("Example 4.18")
P=4;                     //number of poles
f=50;                    //frequency in hertz
ph=3;                     //three phase supply
R2=0.25;                   //rotor resistance in ohms
Nr=1440;                     //rotor speed in rpm
Ns=(120*f)/P;
S1=(Ns-Nr)/Ns;
printf("S1=%f",S1);
Nr2=1200;    //rotor speed when external is added
S2=(Ns-Nr2)/Ns;
//torque remains constant,we get the relation R2'=R2*(S2/S1)
R2dash=R2*(S2/S1)
printf("\nExtra resistance to be connected in the  motor circuit=%fohms",(R2dash-R2))
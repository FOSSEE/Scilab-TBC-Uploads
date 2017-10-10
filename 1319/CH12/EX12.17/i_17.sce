// To calculate current in each branch of the given network.

clc;
clear;


// Refer diagram (a) in the book

R1=6;// one of the resistance between a and b
R2=3;// one of the resistance between a and b
R3=8;// resistance between c and a
R4=15;// resistance in the middle branch
R5=4;// resistance between d and e

V=40;

Rab=(R1*R2)/(R1+R2);// Effective resistance between a and b

Rcb= Rab+R3;// Effective resistance of the top branch between c and b

Reff=(Rcb*R4)/(Rcb+R4);

Rt=Reff+R5;

I=V/Rt;

I1=I*(Rcb/(Rcb+R4));

I2=I*(R4/(Rcb+R4));

I3=I2*(R2/(R1+R2));

I4=I2*(R1/(R1+R2));

disp('amperes',I,'The current through 4 ohm resistor =')
disp('amperes',I1,'The current through 15 ohm resistor =')
disp('amperes',I2,'The current through 8 ohm resistor =')
disp('amperes',I4,'The current through 3 ohm resistor =')
disp('amperes',I3,'The current through 6 ohm resistor =')




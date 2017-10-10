//Resistance R, Voltage V, Load resistance Rl
close();
clear;
clc;
R1 = 11/8;
R2 = 1;
R3 = 3;
R4 = 2;
V = 11;//V
Rl1 = 9;//ohm
Rl2 = 99;
Rth = R1*(R2*R4+R2*R3+R3*R4)/(R1*R2+R2*R3+R3*R4+R4*R1+R2*R4);
//To find Vth
Req = R4 + R2*(R1+R3)/(R1+R2+R3);
I = V/Req;
I1 = R2/(R1+R3)*I;
I2 = I-I1;
Vth = I1*R3+I*R4;
//Load Current for Rl1 'Il1'
Il1 = Vth/(Rl1+Rth);
Il2 = Vth/(Rl2+Rth);
mprintf('Rth = %0.0f ohm \nVth = %0.0f ohm\nFor 9 ohm, Load Current I = %0.0f A\nFor 99 ohm, Load Current I = %0.1f A',Rth,Vth,Il1,Il2);

//Resistance R, Voltage V
close();
clear;
clc;
R1 = 10;//ohm
R2 = 5;
R3 = 30;
R4 = 5;
V = 90;//V
Ra = R4 + (R1+R2)*(R3)/(R1+R2+R3);
I1 = V/Ra;
Ia = R3/(R1+R2+R3)*I1;
Rb = R1+R2+(R3*R4)/(R3+R4);
I2 = V/Rb;
Ib = R3/(R3+R4)*I2;
mprintf('Ammeter reading for network 1 = %0.0f A\nAmmeter reading for network 2 = %0.0f A \nThe equality of the ammeter readings constitutes a special case of the reciprocity theorem.',Ia,Ib);
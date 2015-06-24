// Exa 2.7
clc;
clear;
close;
format('v',6)
// Given data
R1 = 2.2;// in k ohm
R2 = 2.2;// in  kohm
R3 = 4.7;// in k ohm
R = (R2*R3)/(R2+R3);// in k ohm
Vin = 200;
// Vo = (R/(R1+R))*Vin;
// The PIV rating for first diode 
Vomax= round(R/(R1+R)*Vin);// in V
disp(Vomax,"The PIV rating for first diode in V is : ")
Rdas = (R1*R3)/(R1+R3);// in k ohm
// Vo = (Rdas/(R1+Rdas))*(-Vin);
// The PIV rating for second diode 
Vomax=round(Rdas/(R1+Rdas)*Vin);// in V
disp(Vomax,"The PIV rating for second diode in V is : ")

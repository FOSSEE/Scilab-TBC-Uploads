// Example 3.9
clc;
clear;
close;
// Given data
format('v',8);
Rf= 1*10^6;// in Ω
Rin= 1*10^6;// in Ω
Vout_by_Vin= -Rf/Rin;// (since Vout= -Rf/Rin*Vin)
Av= Vout_by_Vin;// voltage gain
disp(Av,"The voltage gain is : ");
// I_in= Iout (As it is a unity gain inverter)
Ain= 1;//input impedance (since I_in= Iout)
disp(Ain,"The input impedance is : ");
Ap= abs(Av*Ain);// power gain
disp(Ap,"The power gain is : ");



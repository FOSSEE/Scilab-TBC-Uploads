// Example 1.59

clear; clc; close;

format('v',6);
// Given data
Zouter=0.05+%i*0.11;//in ohm
Zinner=0.015+%i*0.5;//in ohm
 
//Calculations
R2odash=real(Zouter);//in ohm
X2odash=imag(Zouter);//in ohm
R2idash=real(Zinner);//in ohm
X2idash=imag(Zinner);//in ohm
TouterByTinner=R2odash/(R2odash^2+X2odash^2)*(R2idash^2+X2idash^2)/R2idash;//ratio
disp(TouterByTinner,"Ratio of Torque due to two windinga : ");

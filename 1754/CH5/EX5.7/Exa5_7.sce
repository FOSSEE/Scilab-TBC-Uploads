//Exa 5.7
clc;
clear;
close;
//Given data :
A=200;//gain without feedback(unitless)
Dn=10;//Distortion in %
Vi=0.5;//Initial input voltage in volt
Beta=0.05;//feedback ratio (unitless)
//Formula : Af=A/(1+A*Beta)
Af=A/(1+A*Beta);//gain with feedback(unitless)
disp(Af,"New gain :");
Dn_dash=Dn/(1+A*Beta);//new distortion in %
disp(Dn_dash,"Distortion with negative feedback in % : ");
InitialOutputVoltage=A*Vi;//in Volt
disp(InitialOutputVoltage,"Initial Output Voltage in volt:");
NewInputVoltage=InitialOutputVoltage/Af;//in volt
disp(NewInputVoltage,"New Input Voltage in volts :");
//Note :Ans of Af and  NewInputVoltage is not acurate in the book.
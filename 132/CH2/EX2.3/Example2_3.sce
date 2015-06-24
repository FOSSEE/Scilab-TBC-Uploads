//Example 2.3
//Program to Calculate Current in a Branch by Using Current Source Representation 
//Verify the Circuit's Result for its equivalence with Voltage Source Representation
clear;
clc ;
close ;
//Given Circuit Data
Is=1.5*10^(-3);//Amperes
Zs=2*10^3;//Ohms
Z1=10*10^3;//Ohms
Z2=40*10^3;//Ohms
//Calculation for Current Source Representation
Zl=Z1*Z2/(Z1+Z2);
I2=Is*Zs/(Zs+Zl);
I4I=I2*Z1/(Z1+Z2);//Using Current Divider Rule
//Calculation for Current Source Representation
Vs=Is*Zs;//Open Circuit Volatge
I=Vs/(Zs+Zl);
I4V=I*Z1/(Z1+Z2);//Using Current Divider Rule
//Displaying The Results in Command Window
printf("\n\n\t The Load Current using Current Source Representaion is I4I = %f Amperes.",I4I);
printf("\n\n\t The Load Current using Voltage Source Representaion is I4V = %f Amperes.",I4V);
if I4I==I4V then
printf("\n\n\t Both Results are Equivalent.");
else
printf("\n\n\t Both Results are Not Equivalent.");
end;
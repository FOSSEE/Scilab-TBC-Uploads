// Exa 17.3

clc;
clear all;

// Given data

Vin=5;// Input voltage(Volts)
Rin=2.5;// k Ohms
Rf=1;//k Ohms

// Solution

Iin=Vin/Rin;//Input current(mA)
If=Iin;
Vout=-If*Rf;

printf('The output voltage = %d Volts \n',Vout);

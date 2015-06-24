//Exa 1.13
clc;
clear;
close;
//given data
Ia=60;//in Ampere
disp("EMF induced on 900 Volt on open circuit can be ragarded as being responsible for circulationg short circuit current of 150 mA, through the synchronous impedence of the winding when the excitation current is 10 mA.");
disp("The value of synchronous impedence at this excitation :") ;
OC_Voltage=900;//in Volt
SC_Current=150;//in Ampere
Zs=OC_Voltage/SC_Current;//in ohm
disp("Zs equals to "+string(Zs)+" Ohm");
disp("Internal Voltage drop when tthe load current is 60A=Ia*Zs="+string(Ia*Zs)+" Volts");
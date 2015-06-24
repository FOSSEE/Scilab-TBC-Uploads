//example 16.1
clc; funcprot(0);
// Initialization of Variable
Tso=50;//temperature
Tinfinity=25;//temperature
Tsi=385;//temperature
ka=0.15;
kb=0.08;
ho=25;//W/K/m^2
La=(Tsi-Tso)/(1/ka+0.5/kb)/(ho*(Tso-Tinfinity));
L=La+0.5*La
disp(L*1000,"required thickness of composite in mm");
clear()

//Determine the output of the motor.

clc;
clear;

eff=80/100;

V=220;
I=8;

// Power Equation P=V*I

P=V*I;// Input Power

Pout=eff*P;// Output Power

disp('watts',Pout,'The output power of the motor =')

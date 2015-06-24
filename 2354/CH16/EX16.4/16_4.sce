//example 16.4
clc; funcprot(0);
// Initialization of Variable
Tinfinity=30;
q=1.5e6;
La=0.05;
h=1000;
T2=Tinfinity+q*La/h;
disp(T2,"temperature in degreeC");
T1=Tinfinity+(0.02/150+1/h)*q*La;
To=q*La^2/2/75+T1;
disp(To,"inner surface temperature in degreeC");
clear()

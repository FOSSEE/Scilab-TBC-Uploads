//Resistance of coil R, Current I, Voltage V, Frequency f
close();
clear;
clc;
R = 10;//ohm
I = 5;//A
V = 100;//V
f = 60;//Hz
Z = V/I;
omega = 2*%pi*f;
L = (Z^2-R^2)^(1/2)/omega*1000;
Power_factor = R/Z;
Q = V*I*sin(acos(R/Z));
mprintf('Inductance of coil L = %0.2f mH\nPower Factor = %0.1f \nReactive Power = %0.0f var',L,Power_factor,Q);
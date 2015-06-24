//finding required data//
//example 22//
clc
//clears the command window//;
clear
//clears//
f=500;//frequency//
F=2*f;//aperture rate//
t=5*10^-6;//aperture time//
v=2*%pi*F*t;//error in voltage//
disp('error in voltage:')
disp(v);//displaying result//
V=v*100;//percentage error//
disp('percentage error:')
disp(V);//displaying result//

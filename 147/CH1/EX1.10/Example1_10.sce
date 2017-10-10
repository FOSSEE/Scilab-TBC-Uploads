//Inductance L, Current i, Time after which current reverses its direction T
close();
clear;
clc;
L = 0.05;//H
i = 5;//A
T = 25;//ms
vavg = L*(i-(-i))/(T*10^(-3));
mprintf('Average voltage induced in the inductance, vavg = %0.0f V',vavg); 
clear; clc; close;

E = 8;    //volts
Vled = 2;    //volts
I = 20*10^(-3);    //amperes

R = (E-Vled)/I;

disp(R,'resistance value is : ')


clear; clc; close;

Idc = 50;
C = 100;
Vdc = 27.9;

r = (2.4*Idc/(C*Vdc))*100;

disp(r,'Ripple value of capacitor in percentage = ');

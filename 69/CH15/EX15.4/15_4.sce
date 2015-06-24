clear; clc; close;

Vm = 30;
Idc = 50;
C  = 100;

Vdc = Vm - 4.17*Idc/C;

disp(Vdc,'Filter dc voltage = ');

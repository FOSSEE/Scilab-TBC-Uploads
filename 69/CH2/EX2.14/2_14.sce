clear; clc; close;

E = 10;    //volts
R = 1*10^(3);    //ohms
Vd1 = 0.7;    //volts
Vd2 = 0;    //volts

Vo = E-Vd1;
I = (E-Vd1)/R;

disp(Vo,'output voltage is : ');


clear; clc; close;

//for part a
beta = 100;
delta_vbe = -0.17;
Rb = 240*10^(3);

s = -beta/Rb;
delta_ic = delta_vbe*s;
disp(s,'Stability factor for part a is : ');
disp(delta_ic,'change in Ic(amperes) for part a is :');

//for part b
Rb = 240*10^(3);
Re = 1*10^(3);
s = -beta/(Rb+(beta+1)*Re);
delta_ic = delta_vbe*s;
disp(s,'Stability factor for part b is : ');
disp(delta_ic,'change in Ic(amperes) for part b is :');

//for part c
Rb = 47*10^(3);
Re = 4.7*10^(3);
s = -1/Re;
delta_ic = delta_vbe*s;
disp(s,'Stability factor for part c is : ');
disp(delta_ic,'change in Ic(amperes) for part c is :');

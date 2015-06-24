clear; clc; close;

Beta = 50;
//denoting Rb/Re by x, we have
//for part a
x = 250;
ico = 19.9*10^(-9);
s = (1+Beta)*((1+x)/(Beta+1+x));
delta_ic = s*ico;
disp(s,'stability factor for part a is :');
disp(delta_ic,'change in Ic(amperes) is : ');

//for part b
x = 10;
s = (1+Beta)*((1+x)/(Beta+1+x));
delta_ic = s*ico;
disp(s,'stability factor for part b is :');
disp(delta_ic,'change in Ic(amperes) is : ');

//for part c
x = 0.01;
s = (1+Beta)*((1+x)/(Beta+1+x));
delta_ic = s*ico;
disp(s,'stability factor for part c is :');
disp(delta_ic,'change in Ic(amperes) is : ');


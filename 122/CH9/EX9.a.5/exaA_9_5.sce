// Example A-9-5
// Conversion from transfer function model to state space model

clear; clc;
xdel(winsid());  //close all windows

s = %s;
num = 25.04*s + 5.008;
den = poly( [5.008 25.1026 5.03247 1],'s','c');

Hss = cont_frm(num,den);
disp(Hss,'Hss = ');
 
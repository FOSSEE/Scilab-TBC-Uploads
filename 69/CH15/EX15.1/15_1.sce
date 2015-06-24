clear; clc; close;

Vdc = 25;
Vr = 1.5;


r_a = (Vr/Vdc)*100;
r_b = (Vr*0.35/Vdc)*100;

disp(r_a,'Ripple value in part a = ');
disp(r_b,'New Ripple value in part b = ');

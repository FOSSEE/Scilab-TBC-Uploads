clear;
clc;
d = 14;// inches
I = 442.57;//inch units
f = 8;// tons/in^2
E = 13000;// tons/in^2
R = E*d/(2*f);// inches
M_r = f*(I/(d/2));// ton-inches
printf('The radius to which it should be bent is R = % d inches or %.1f feet',R,R/12);
printf('\n The moment of resistance is M_r = %.1f ton-inches',M_r);

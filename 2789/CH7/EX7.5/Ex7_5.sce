clear;
clc;

//page no. 240

G = 50;//cfs
Q = 400;//hp
A1 = 4;//sqft
A2 = 2;//sqft
z1 = 30;//ft
z2 = 80;//ft
p1 = 20;//psi
p2 = 10;//psi

V1 = G/A1;
V2 = G/A2;
E_p = Q*(550/62.4)/G;
h_L = (p1-p2)*144/62.4 + (V1^2 - V2^2)/(2*32.2) +(z1-z2)+E_p;
printf('Head lost = %.1f ft',h_L);

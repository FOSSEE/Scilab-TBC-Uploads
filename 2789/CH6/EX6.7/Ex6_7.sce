clear;
clc;

//page no. 190

F = 1000;//lb
H = 30000;//ft
v1 = 500;//fps
v2 = 4000;//fps
p2 = 5;//psia
A2 = 1;//sqft
p1 = 4.37;//psia

G_a = (F - (p2-p1)*A2*144)*32.2/(v2-v1);

printf('Ga = %.1f lb/sec',G_a);

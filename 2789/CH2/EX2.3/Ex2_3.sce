clear;
clc;

//page no.35

h1 = 12.5;// inches
p1 = 14.50;// psia
p = p1 - h1*14.70/29.92;//absolute pressure in psia
printf('Absolute pressure = %.2f psia',p);

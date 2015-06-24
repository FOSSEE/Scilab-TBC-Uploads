clear;
clc;
b = 6;// inches 
t = 1/2;// inch
R = 40;// feet
E = 13000;// tons/in^2
y = t/2;// inch
f = (E/(R*12))*(y);// tons/in^2
printf('The maximum intensity of stress induced is f = %.2f tons/in^2',f);

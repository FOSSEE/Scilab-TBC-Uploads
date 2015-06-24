clc; 
clear all;
r = 0.15; // Radius of wire in cm
A = %pi* r^2; // Area of wirw in cm square
F = 200; // Force in dyne
Y = 12.5e11; // Young's modulus in dyne per cm square
t = ((F*9.8e5)/(A*Y))*100;
disp('%',t,'Percentage of increase is ');

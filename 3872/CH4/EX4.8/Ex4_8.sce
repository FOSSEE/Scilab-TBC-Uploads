// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.8
// Scilab Version 6.0.0 : OS - Windows

clc;
clear;

H = 18;                                          // Average line heightin ft
e = 8.854*10^-12; 
D = 5;                                           // Diameter of the conductor in ft
r = 0.023;                                       // Radius of the copper conductor ft

Hxx = 2*(H);                                     // Geometric mean radius in ft
Hxy = sqrt((Hxx)^2 + (5)^2);                     // Geometric mean distance in ft
Cxy = ((%pi)*(e))/((log(D/r))-(log(Hxy/Hxx)));   // Line to Line capacitance in F/m

printf('Line to Line capacitance is  (Cxy) = %0.3e  F/m', Cxy);

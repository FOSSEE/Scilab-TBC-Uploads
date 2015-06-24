//chapter 7
//Example 7.2
//Page 171
//solvingBAM
clear;clc;
//Voltage Sources
Ea = 1.5;
Eb = 1.5*(cos(-36.87 * %pi / 180) + %i * sin(-36.87 * %pi / 180))
Ec = 1.5;
//admittances
Ya = -%i*0.8;
Yb = Ya;
Yc= Ya;
Yd = -%i*5;
Ye = -%i*8;
Yf = -%i*4;
Yg = -%i*2.5;
Yh = Yd;
//current sourcs
I1 = Ea * Ya;
I2 = Eb * Yb;
I3 = I1;
I4 = 0;
//Self-admittances
Y11 = Yd + Yf + Ya;
Y22 = Yh + Yg + Yb;
Y33 = Ye + Yc + Yg + Yf;
Y44 = Yd + Ye + Yh;
//Mutual-admittances
Y12 = 0;Y21 = Y12;
Y13 = -Yf;Y31 = Y13;
Y14 = -Yd;Y41 = Y14;
Y23 = -Yg;Y32 = Y23;
Y24 = -Yh;Y42 = Y24;
Y34 = -Ye;Y43 = Y34;
//Matrix Form
I = [I1 ; I2 ; I3 ; I4];
Y = [Y11 Y12 Y13 Y14;Y21 Y22 Y23 Y24;Y31 Y32 Y33 Y34;Y41 Y42 Y43 Y44];
V = Y\I;
disp('Node Voltages V1,V2,V3 and V4 in per unit is')
disp(V)
disp('In polar form')
printf("\n V1 = %.2f /_%.2f per unit",abs(V(1,1)),atan(imag(V(1,1)),real(V(1,1))) * 180 / %pi)
printf("\n V2 = %.2f /_%.2f per unit",abs(V(2,1)),atan(imag(V(2,1)),real(V(2,1))) * 180 / %pi)
printf("\n V3 = %.2f /_%.2f per unit ",abs(V(3,1)),atan(imag(V(3,1)),real(V(3,1))) * 180 / %pi)
printf("\n V4 = %.2f /_%.2f per unit \n\n",abs(V(4,1)),atan(imag(V(4,1)),real(V(4,1))) * 180 / %pi)
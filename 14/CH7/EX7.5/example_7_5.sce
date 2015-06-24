//chapter 7
//Example 7.5
//Page 181
//introcapacitor
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
//Value of capacitor introduced in node 4
C = 5.0 ;//in per unit
Xc = %i*C;
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
E_th = V(4,1);
Z = inv(Y);
Z_th = Z(4,4);
I_c = E_th / (Z_th - Xc);
disp('Thevenin equivalent of the circuit behind node four')
printf("\n Eth = %.2f /_%.2f per unit \n\n",abs(E_th),atan(imag(E_th),real(E_th)) * 180 / %pi)
disp('Thevenin equivalent impedance')
printf("\n Z_th = j%.2f per unit \n\n",imag(Z_th))
disp('Current drawn by the capacitor')
printf("\n Ic = %.2f /_%.2f per unit \n\n",abs(I_c),atan(imag(I_c),real(I_c)) * 180 / %pi)
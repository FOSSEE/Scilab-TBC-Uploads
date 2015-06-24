//chapter 7
//Example 7.6
//Page 181
//currentinjection
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
//Current Injected
I4_1 = -0.316 * (cos(78.03 * %pi / 180) + %i * sin(78.03 * %pi / 180));
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
Z = inv(Y);
V_ci_1 = I4_1 * Z(1,4);
V_ci_2 = I4_1 * Z(2,4);
V_ci_3 = I4_1 * Z(3,4);
V_ci_4 = I4_1 * Z(4,4);
disp('Voltages with all emfs shorted')
printf("\n V1 = %.2f /_%.2f per unit",abs(V_ci_1),atan(imag(V_ci_1),real(V_ci_1)) * 180 / %pi)
printf("\n V2 = %.2f /_%.2f per unit",abs(V_ci_2),atan(imag(V_ci_2),real(V_ci_2)) * 180 / %pi)
printf("\n V3 = %.2f /_%.2f per unit ",abs(V_ci_3),atan(imag(V_ci_3),real(V_ci_3)) * 180 / %pi)
printf("\n V4 = %.2f /_%.2f per unit \n\n",abs(V_ci_4),atan(imag(V_ci_4),real(V_ci_4)) * 180 / %pi)
disp('Resulting voltages are determined by superposition of voltages caused by injected current and emfs shorted to the node voltage')
V_new_1 = V(1,1) + V_ci_1;
V_new_2 = V(2,1) + V_ci_2;
V_new_3 = V(3,1) + V_ci_3;
V_new_4 = V(4,1) + V_ci_4;
printf("\n V1 = %.2f /_%.2f per unit",abs(V_new_1),atan(imag(V_new_1),real(V_new_1)) * 180 / %pi)
printf("\n V2 = %.2f /_%.2f per unit",abs(V_new_2),atan(imag(V_new_2),real(V_new_2)) * 180 / %pi)
printf("\n V3 = %.2f /_%.2f per unit ",abs(V_new_3),atan(imag(V_new_3),real(V_new_3)) * 180 / %pi)
printf("\n V4 = %.2f /_%.2f per unit \n\n",abs(V_new_4),atan(imag(V_new_4),real(V_new_4)) * 180 / %pi)
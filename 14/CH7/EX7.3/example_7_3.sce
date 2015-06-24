//chapter 7
//Example 7.3
//Page 177
//matrixpartition
clear;clc;
//Given
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
//Self-admittances
Y11 = Yd + Yf + Ya;
Y22 = Yh + Yg + Yb;
Y33 = Ye + Yg + Yf;
Y44 = Yd + Ye + Yh;
//Mutual-admittances
Y12 = 0;Y21 = Y12;
Y13 = -Yf;Y31 = Y13;
Y14 = -Yd;Y41 = Y14;
Y23 = -Yg;Y32 = Y23;
Y24 = -Yh;Y42 = Y24;
Y34 = -Ye;Y43 = Y34;
//Bus Impedance Matrix
Y = [Y11 Y12 Y13 Y14;Y21 Y22 Y23 Y24;Y31 Y32 Y33 Y34;Y41 Y42 Y43 Y44];
K = Y(1:2,1:2);
L = Y(1:2,3:4);
L_T = Y(3:4,1:2);
M = Y(3:4,3:4);
M_1 = inv(M);
LMT = L * M_1 *  L_T;
Ybus = K - LMT;
Y_12 = - Ybus(1,2);
Y_10 = Ybus(1,1) - Y_12;
Y_20 = Y_10;
printf("\n Admittance between buses 1 and 2 = - j%.4f per unit\n",-imag(Y_12))
printf("\n Admittance between buse 1 and reference bus = - j%.4f per unit\n",-imag(Y_10))
printf("\n Admittance between buse 2 and reference bus = - j%.4f per unit\n",-imag(Y_20))
Z = 1/Y_12 + 1/Y_10 + 1/Y_20;
I = (Ea-Eb) / Z;
printf("\n I = %.2f /_%.2f per unit \n",abs(I),atan(imag(I),real(I)) * 180 / %pi)
Pa = Ea * I';
printf("\n Power out of source ''a'' = %.3f + j%.3f per unit \n",real(Pa),imag(Pa))
Pb = Eb * I';
printf("\n Power out of source ''b'' = %.3f - j%.3f per unit \n",real(Pb),-imag(Pb))
Var = (abs(I))^2 * imag(Z);
printf("\n Reactie voltamperes in circuit equivalent = %.3f per unit \n",Var)
V_1 = Ea - I/Y_10;
printf("\n Voltage at node 1 = %.3f - j%.3f per unit \n",real(V_1),-imag(V_1))
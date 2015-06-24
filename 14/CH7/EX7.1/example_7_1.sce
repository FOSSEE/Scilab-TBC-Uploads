//chapter 7
//Example 7.1
//Page 170
//busadmittancematrix
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
//current sourcs
I1 = Ea * Ya;
I2 = Eb * Yb;
I3 = I1;
I4 = 0;
disp('Current Sources are')
printf("\n I1 = - j%.2f per unit",-imag(I1))
printf("\n I2 = %.2f - j%.2f per unit",real(I2),-imag(I2))
printf("\n I3 = - j%.2f per unit \n\n",-imag(I3))
//Self-admittances
Y11 = Yd + Yf + Ya;
Y22 = Yh + Yg + Yb;
Y33 = Ye + Yc + Yg + Yf;
Y44 = Yd + Ye + Yh;
disp('Self-admittances are')
printf("\n Y11 = - j%.2f per unit",-imag(Y11))
printf("\n Y22 = - j%.2f per unit",-imag(Y22))
printf("\n Y33 = - j%.2f per unit",-imag(Y33))
printf("\n Y44 = - j%.2f per unit\n\n",-imag(Y44))
//Mutual-admittances
Y12 = 0;Y21 = Y12;
Y13 = -Yf;Y31 = Y13;
Y14 = -Yd;Y41 = Y14;
Y23 = -Yg;Y32 = Y23;
Y24 = -Yh;Y42 = Y24;
Y34 = -Ye;Y43 = Y34;
disp('Mutual admittances are')
printf("\n Y12 = Y21 = %.2f per unit",imag(Y12))
printf("\n Y13 = Y31 = j%.2f per unit",imag(Y13))
printf("\n Y14 = Y41 = j%.2f per unit",imag(Y14))
printf("\n Y23 = Y32 = j%.2f per unit",imag(Y23))
printf("\n Y24 = Y42 = j%.2f per unit",imag(Y24))
printf("\n Y34 = Y43 = j%.2f per unit \n\n",imag(Y34))
//Matrix Form
I = [I1 ; I2 ; I3 ; I4];
Y = [Y11 Y12 Y13 Y14;Y21 Y22 Y23 Y24;Y31 Y32 Y33 Y34;Y41 Y42 Y43 Y44];
disp('Current Vector =')
disp(I)
disp('Bus admittance matrix =')
disp(Y)
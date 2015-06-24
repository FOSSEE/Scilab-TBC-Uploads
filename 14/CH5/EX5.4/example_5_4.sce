//Chapter 5
//Example 5.4
//Page 111
//compensation
clear;clc;

//Given
l = 230 ; //in mi
f = 60 ; //in Hz
P = 125e6 ; //in W
V = 215e3 ; //in V

//From Table A.1 and A.2 for 30ft Rook
//z = R + i(Xa + Xd)
z = 0.1603 + %i * (0.415+0.4127);

//From Table A.1 and A.3 for 30ft Rook
y = %i * [1e-6 / ( 0.0950 + 0.1008)]

//Calculations
yl = sqrt(y*z)*l;
Z_c = sqrt(z/y);

cosh_yl = cosh(real(yl)) * cos(imag(yl)) + %i * sinh(real(yl)) * sin(imag(yl));
sinh_yl = sinh(real(yl)) * cos(imag(yl)) + %i * cosh(real(yl)) * sin(imag(yl));

//Equivalent pi circuit
Z1 = Z_c * sinh_yl;
Y1_2 = (cosh_yl - 1)/(Z_c * sinh_yl);

A = cosh_yl;D = cosh_yl;
B = Z1;
C = sinh_yl / Z_c;

disp('For an uncompensated line')
printf("\n\n A = D = %.4f /_%.2f \n\n",abs(A),(atan(imag(A),real(A))*180/%pi))
printf("\n\n B = %.4f /_%.2f ohm \n\n",abs(B),(atan(imag(B),real(B))*180/%pi))
printf("\n\n C = %f /_%.2f mho \n\n",abs(C),(atan(imag(C),real(C))*180/%pi))

//For a series compensation factor of 70%
cf = 0.7
B1 = Z1 - %i *  cf * l * (0.415 + 0.4127) ;//X_a = 0.415 ohm/mi,X_d = 0.4127 in
A1 = B1 * Y1_2 + 1;
C1 = 2 * Y1_2 + B1 * (Y1_2)^2;

disp('For a series compensation factor  of 70%')
printf("\n\n B = %.2f /_%.2f ohm \n\n",abs(B1),(atan(imag(B1),real(B1))*180/%pi))
printf("\n\n A = %.3f /_%.2f \n\n",abs(A1),(atan(imag(A1),real(A1))*180/%pi))
printf("\n\n C = %f /_%.2f mho \n\n",abs(C1),(atan(imag(C1),real(C1))*180/%pi))

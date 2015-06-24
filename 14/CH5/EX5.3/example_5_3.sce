//Chapter 5
//Example 5.3
//Page 106
//equivalentpicircuit
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

disp('Equivalent PI circuit')
printf("\n\n Total series impedance of the line = %.2f /_%.2f ohm in series arm \n\n",abs(Z1),atan(imag(Z1),real(Z1))*180/%pi)
printf("\n\n Total Shunt admittance of the line = %.6f /_%.2f mho in each shunt arm \n\n",abs(Y1_2),atan(imag(Y1_2),real(Y1_2))*180/%pi)

//Nominal pi Circuit
Z = l * z;
Y_2 = y * l/2;

disp('Nominal PI circuit')
printf("\n\n Total series impedance of the line = %.2f /_%.2f ohm in series arm \n\n",abs(Z),atan(imag(Z),real(Z))*180/%pi)
printf("\n\n Total Shunt admittance of the line = %.6f /_%.2f mho in each shunt arm \n\n",abs(Y_2),atan(imag(Y_2),real(Y_2))*180/%pi)

zp = ((abs(Z)-abs(Z1))/abs(Z1))*100;
yp = ((abs(Y_2)-abs(Y1_2))/abs(Y1_2))*100;

printf("\n\n Line impedace of the series arm of the nominal pi exceeds that of equivalent pi by %.1f percent \n\n",zp)
printf("\n\n Conductance of the shunt arms of the nominal pi is %.0f percent less than that of equivalent pi \n\n",abs(yp))

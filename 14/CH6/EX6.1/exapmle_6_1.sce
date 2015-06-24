//Chapter 6
//Example 6.1
//Page 142
//Secondary
clear;clc;
N_1 = 2000;
N_2 = 500;
V_1 = 1200 * (cos(0)+%i*sin(0));
I_1 = 5 * (cos(-30*%pi/180) + %i * sin(-30*%pi/180));

//Calculations
a = N_1 / N_2;
V_2 = V_1/a;
I_2 = a * I_1;
Z_2 = V_2 / I_2;
Z1_2 = Z_2 * a^2;
printf("\n\n V_2 = %.0f /_%.0f V \n\n",abs(V_2),((atan(imag(V_2),real(V_2)))*180/%pi))
printf("\n\n I_2 = %.0f /_%.0f A \n\n",abs(I_2),((atan(imag(I_2),real(I_2)))*180/%pi))
printf("\n\n Z_2 = %.0f /_%.0f ohm \n\n",abs(Z_2),((atan(imag(Z_2),real(Z_2)))*180/%pi))
printf("\n\n Z1_2 = %.0f /_%.0f ohm \n\n",abs(Z1_2),((atan(imag(Z1_2),real(Z1_2)))*180/%pi))
//Chapter 6
//Example 6.2
//Page 144
//voltageregulation
clear;clc;

N_1 = 2000;
N_2 = 500;
V_1 = 1200 * (cos(0)+%i*sin(0));
r1 = 2;
r2 = 0.125;
x1 = 8;
x2 = 0.5;
Z_2 = 12;

//Calculations
a = N_1 / N_2;
R1 = r1 + a^2 * r2;
X1 = x1 + a^2 * x2;
Z1_2 = Z_2 * a^2;

I_1 = V_1 / (Z1_2 + R1 + %i * X1);
V_2 = I_1 * Z1_2 / a;
voltage_regulation = ((V_1/4)-abs(V_2))*100/V_2;

printf("\n\n I_1 = %.2f /_%.2f A \n\n",abs(I_1),((atan(imag(I_1),real(I_1)))*180/%pi))
printf("\n\n V_2 = %.2f /_%.2f V \n\n",abs(V_2),((atan(imag(V_2),real(V_2)))*180/%pi))
printf("\n\n Voltage Regulation = %.2f percent \n\n",voltage_regulation)
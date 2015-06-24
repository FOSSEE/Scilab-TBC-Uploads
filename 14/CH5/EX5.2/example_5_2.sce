//Chapter 5
//Example 5.2
//Page 103
//example1inpu
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
V_r = V / sqrt(3);
I_r = P / (sqrt(3)*V);

cosh_yl = cosh(real(yl)) * cos(imag(yl)) + %i * sinh(real(yl)) * sin(imag(yl));
sinh_yl = sinh(real(yl)) * cos(imag(yl)) + %i * cosh(real(yl)) * sin(imag(yl));

//Per Unit calculations
Base_impedance = V^2 / P;
Base_current = P / (sqrt(3)*V);
Z_c_pu = Z_c / Base_impedance;
V_r_pu = (V / sqrt(3)) / (V / sqrt(3));
I_r_pu = (P / (sqrt(3)*V)) / Base_current;

V_s_pu = V_r_pu * cosh_yl + I_r_pu * Z_c_pu * sinh_yl;
I_s_pu = I_r_pu * cosh_yl + V_r_pu * sinh_yl / Z_c_pu;

Line_voltage = abs(V_s_pu)*V / 1000;
Line_current = abs(I_s_pu)*Base_current;

printf("\n\n Sending end line voltage = %.1f V \n\n",Line_voltage)
printf("\n\n Sending end line current = %.1f A \n\n",Line_current)

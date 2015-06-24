//Chapter 5
//Example 5.5
//Page 112
//voltageregulation
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
yl = sqrt(y*z)*l;
Z_c = sqrt(z/y);

cosh_yl = cosh(real(yl)) * cos(imag(yl)) + %i * sinh(real(yl)) * sin(imag(yl));
sinh_yl = sinh(real(yl)) * cos(imag(yl)) + %i * cosh(real(yl)) * sin(imag(yl));

V_s = V_r * cosh_yl + I_r * Z_c * sinh_yl;
I_s = I_r * cosh_yl + V_r * sinh_yl / Z_c;

//Equivalent pi circuit
Z1 = Z_c * sinh_yl;
Y1_2 = (cosh_yl - 1)/(Z_c * sinh_yl);

//Total capacitive Susceptance
B_c = %i * y * l;

//For 70% Compensation
cf = 0.7;
B_L = - B_c * 0.7;

//From appendix
A = 1;D = 1;B = 0;
C = -%i*B_L;


//From Table A.6 for combining two networks in series
A_eq = cosh_yl + Z1 * C;
voltage_regulation = ((abs(V_s)/abs(A_eq))-V_r)*100/V_r;
printf("\n\n Voltage regulation = %.2f percent \n\n",voltage_regulation)

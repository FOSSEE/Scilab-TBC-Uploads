//Chapter 5
//Example 5.1
//Page 101
//Velocity
clear;clc;

//Given
D_12 = 23.8 ; D_23 = 23.8 ; D_31 = 47.6 ;//in ft
l = 230 ; //in mi
f = 60 ; //in Hz
P = 125e6 ; //in W
V = 215e3 ; //in V

D_eq = (D_12 * D_23 * D_31)^(1/3);

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

V_s = V_r * cosh_yl + I_r * Z_c * sinh_yl;
I_s = I_r * cosh_yl + V_r * sinh_yl / Z_c;
printf("\n\n Sending end voltage = %.0f /_%.2f V \n",abs(V_s),(atan(imag(V_s),real(V_s))*180/%pi))
printf("\n Sending end current = %.2f /_%.2f V \n\n",abs(I_s),(atan(imag(I_s),real(I_s))*180/%pi))

Line_voltage = sqrt(3) * abs(V_s) / 1000 ;
Line_current = abs(I_s);
Power_factor = cos(atan(imag(V_s),real(V_s)) - atan(imag(I_s),real(I_s)));
Power = sqrt(3) * Line_voltage * Line_current * Power_factor;
printf("\n\n Sending end line voltage = %.1f kV \n\n",Line_voltage)
printf("\n\n Sending end line current = %.1f A \n\n",Line_current)
printf("\n\n Sending end power = %.0f kW \n\n",Power)

voltage_regulation = (((abs(V_s)/abs(cosh_yl)) - V_r)/V_r)*100;
printf("\n\n Voltage Regulation = %.1f percent \n\n",voltage_regulation)

B = imag(yl)/l;
y1 = 2 * %pi / B;
Velocity = f * y1;
printf("\n\n Wavelength = %.0f mi \n\n",y1)
printf("\n\n Velocity = %.0f mi/s \n\n",Velocity)

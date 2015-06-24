clear ;
clc;
// Example 8.3
printf('Example 8.3\n\n');
printf('Page No. 226\n\n');

// given
R = 6;// Resistance in ohm
Xc = 16;// Capacitive resistance in ohm
Xl = 24;// Inductive resistance in ohm
Z = ((R^2) + (Xc - Xl)^2)^0.5;// Impedance in ohm
P_f = R/Z;// Power factor = cos(x) = 0.6
x = acos(0.6);
y = sqrt(1 - P_f^2);//y = sin (x)
V = 200;// in Volts(sin wave voltage = ((200*2^1.5)*sinwt)
I = V/Z;// Current in Amperes
P = I^2 * R;// in W
Q = V * I * y;// in VAR
S = V * I;// in VA
printf('The actual power is %.0f W \n',P)
printf('The reactive power is %.0f VAR \n',Q)
printf('The apparent power is %.0f VA \n',S)




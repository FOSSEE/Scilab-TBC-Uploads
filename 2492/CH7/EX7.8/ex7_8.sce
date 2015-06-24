// Exa 7.8
format('v',7)
clc;
clear;
close;
// Given data
R = 100;// in k ohm
R = R * 10^3;// in ohm
C = 2;// in µF
C = C * 10^-6;// in F
f = 10;// in kHz
f = f * 10^3;// in Hz
omega = 2*%pi*f;// in Krad
// The open loop voltage gain,
A = R*omega*C;
disp(A,"The open loop voltage gain is");
format('e',9)
//The feedback function, B is evaluated as, A_F = -R/Z_C*( 1/(1+(1/(A*B))) );
B = 1/( sqrt( 1+((R*omega*C)^2) ) );
disp(B,"The feed back function is");
format('v',7)
//A_F = -R/Z_C*(1/( 1+(1/(A*B)) ));
Av = 10^3;
A_F = round(A*(1/(1+(1/(Av*B)))));
disp(A_F,"The overall gain is");

// Note: The open loop voltage gain in the book is not accurate.

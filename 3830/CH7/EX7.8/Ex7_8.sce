// Exa 7.8

clc;
clear;

R = 200; // strain gauge resistance in Ohms
G = 2.5; // Gauge factor
RL = 400; // load resistance in Ohms
V = 24; // input voltage in volts
S = 140; // applied stress in mgf/m^2
Y = 200; // Modulus of elasticity in GN/m^2

// Solution

V_normal = V*(R/(R+RL));

printf('Voltage across strain gauge = %d V \n',V_normal);
e = (S*10^-3)/Y;
// Strain e =   dell_L/L
//dell_R/R = G* dell_L/L;
// so,
dell_R = R*G*e;


//strain gauge under strained condition
V_strained = (R+dell_R) * V/(R+dell_R+RL);
printf(' Voltage across strain gauge under strained condition = %.4f ohms \n',V_strained);

dif = V_normal - V_strained;
printf(' Change in output voltage = %.2f mV \n',abs(dif*10^3));

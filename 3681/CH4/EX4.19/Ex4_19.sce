// Calculating the rate of change of temperature at t=0
clc;
disp('Example 4.19, Page No. = 4.27')
// Given Data
I = 2.5;// Current (in Amperes)
V = 230;// Voltage (in volts)
G = 60;// Weight of copper (in kg)
h = 390;// Specific heat of copper (in J per kg per degree celsius)
// Calculation of the rate of change of temperature at t=0
Q = I*V;// Loss (in Watts)
T_rate = Q/(G*h);// Rate of change of temperature at t=0 (in degree celsius per second)
disp(T_rate,'Rate of change of temperature at t=0 (degree celsius per second)=');
//in book answer is 0.0246 (in degree celsius per second).  The answers vary due to round off error


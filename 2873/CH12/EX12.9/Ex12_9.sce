// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 9")
T1=(1200+273);//temperature of body in K
T2=(600+273);//temperature of black surrounding in K
epsilon=0.4;//emissivity of body at 1200 degree celcius
sigma=5.67*10^-8;//stephen boltzman constant in W/m^2 K^4
disp("rate of heat loss by radiation(Q)=wpsilon*sigma*A*(T1^4-T2^4)")
disp("heat loss per unit area by radiation(Q)in W")
disp("Q=epsilon*sigma*(T1^4-T2^4)")
Q=epsilon*sigma*(T1^4-T2^4)
disp("Q in KW")
Q=Q/1000

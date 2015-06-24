clear ;
clc;
// Example 11.9
printf('Example 11.9\n\n');
printf('Page No. 324\n\n');

//given
T1 = 273;// Measured temperature In degree celcius
P = 1;// Measured pressure in bar
T2 = 290;// initial temperature In degree celcius
T3 = 1000;// Final temperature In degree celcius
T4 = 1150;// Entering tempearture In degree celcius
v1 = 7;// in m^3/s
v2 = 8;// in m^s
M = 22.7;// in kmol/m^3
d = 0.1;// Diameter in m
A = 0.01;// Surface area per regenerator channel in m^2
u = 1;// maximum velocity in m/s
Cp_1 = 34*10^3;// Heat capacity at T4 temperature in J/kmol-K
Cp_2 = 32*10^3;// Heat capacity at outlet temperature in J/kmol-K
Cp_m = 30*10^3;// Heat capacity at mean temperature in J/kmol-K

m_c = v1/M;//  Molal air flow rate in kmol/s
H_c1 = Cp_m*(T3 - T1);// Enthalpy of air at 1000K in J/mol
H_c2 = Cp_m*(T2 - T1);// Enthalpy of air at 290 in J/mol
Q = (m_c*(H_c1 - H_c2))/10^6;// in 10^6 W
printf('The heat transfer, Q is %.1f *10^6 W \n',Q)

m_F = v2/M;//  Molal flow rate of flue gas in kmol/s
dH = (Q/m_F)*10^6;// enthaply chnage of the flue gas in J/kmol
H_F1 = Cp_1*(T4 - T1);// Enthalpy of the flue gas at 1150 K in J/kmol
H_F2 =H_F1 - dH;// Enthalpy at the exit temperature in J/kmol
T_F2 = (H_F2/Cp_2) + T1;// in K
printf('The exit tempearture of the flue gas is %.0f K \n',T_F2)
S_R = v2/u;//cross sectional area of the regenerator in m^2
N = S_R/A;
printf('The number of channels required is %.0f \n',N)
printf('Consequently for this regenerator a square layout could be achieved with 40 channels arranged horizontally and 20 channels vertically.')






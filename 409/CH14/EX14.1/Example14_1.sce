clear ;
clc;
// Example 14.1
printf('Example 14.1\n\n');
//Page No. 442
// Solution 

T1f = 125 ;// Temperature of NH3 -[degree F] 
T1 =  460 +T1f ;// Temperature NH3 -[degree Rankine] 
Pg =  292 ;// Pressure of NH3 -[psig]
Pa =  Pg+14.7 ;//Pressure of NH3 -[psia]
R = 10.73 ;//Universal gas constant-[(psia*cubic feet)/(lb mol*R)]
mw_NH3 = 17 ;// Molecular wt. 1 lb mol NH3-[lb]
n = 1/17 ;//[mol]
V_tank = 120 ;// Volume of tank-[cubic feet]
// Ideal V
V_id = (n*R*T1)/Pa ;// Specific volume of NH3 treating it ideal gas-[cubic feet/lb]

//From appendix D
Tc = 729.9 ;//[degree R]
Pc = 1636 ;//[psia]
Tr =  T1/Tc;
Pr =  Pa/Pc;
// Using Tr and Pr we get z = 0.855 from Nelson and Obert chart
z_real = 0.855;
z_ideal = 1;
V_real =  V_id*z_real/z_ideal;// Specific volume of NH3 treating it real gas-[cubic feet/lb]
NH3 = V_tank/V_real ;// Actual amt. of NH3 in tank-[lb]
printf('Actual amt. of NH3 in tank is %.0f lb. Therefore , boss is wrong.',NH3);
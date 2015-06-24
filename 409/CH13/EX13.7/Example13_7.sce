clear ;
clc;
// Example 13.7
printf('Example 13.7\n\n');
//Page no. 416
// Solution fig E13.7

G = 100 ;// Basis: Pyrolysis Gas-[lb mol] 
ub_CO = 10/100 ;// fraction of CO left unburnt
ex_air = 40/100 ;;// fraction of excess air
m_vol = 359 ;// molar volume of gas at std. cond.-[cubic feet]
Ts = 492 ;// Standard temperature -[degree Rankine]
Ps = 29.92 ;//Standard pressure -[in. Hg]

// Analysis of entering gas of entering gas
Tf1 =  90 ;// Temperature of gas-[degree F]
T_gas = Tf1 +  460 ;//Temperature of gas-[degree Rankine]
P_gas = 35 ;//Pressure-[in. Hg]
CO2 = 6.4/100 ;// mol fraction of CO2
O2 = 0.1/100 ;// mol fraction of O2
CO = 39/100 ;// mol fraction of CO
H2 = 51.8/100 ;// mol fraction of H2
CH4 = 0.6/100 ;// mol fraction of CH4
N2 = 2.1/100 ;// mol fraction of N2

// Analysis of entering air
Tf2 = 70 ;// Temperature of air -[degree F]
T_air = Tf2 +  460 ;//Temperature of air-[degree Rankine]
P_air = 29.4 ;//Pressure of air [in. Hg]
f_N2 = 79/100 ;// mol fraction of N2
f_O2 =  21/100 ;// mol fraction of O2

// Get O2 required for combustion of CO,H2 & CH4 according to the following  equation
// CO +  1/2O2-->CO2
//H2 +  1/2O2-->H20
//CH4 +  2O2--> CO2 +  2H2O
O2r_O2 = O2 * G ;//  O2 required by O2-[lb mol]
O2r_CO = CO * G/2 ;// O2 required by CO-[lb mol]
O2r_H2 = H2 * G/2 ;// O2 required by H2-[lb mol]
O2r_CH4 = G * CH4 * 2 ;// O2 required by CH4-[lb mol]
O2r_total = O2r_O2 +  O2r_CO +  O2r_H2 +  O2r_CH4 ;// Total O2 required-[lb mol]
ex_O2 = ex_air * O2r_total ;// Excess O2-[lb mol]
total_O2 = ex_O2 +  O2r_total ;// Total amt of O2 in air-[lb mol]
total_N2 = total_O2 * (f_N2/f_O2);// Total amt of in air-[lb mol]
air = total_O2 +  total_N2 ;// Total air entering -[lb mol]

// Product analysis
P_CO = ub_CO * CO * G ;//Unburnt CO in P-[lb mol]
//Element balance of 2N
P_N2 = N2 * G +   total_N2 ;//  N2 in P-[lb mol]
//Element balance of C
P_CO2 =  (CO2 +  CO +  CH4) * G - 1 * P_CO;//CO2 in P-[lb mol]
// Element balance of 2H
P_H2O = (H2 +  2 * CH4) * G ;// H2 in P-[lb mol]
//  Element balance of 2O
P_O2 = (CO2 +  O2 +  0.5 * CO) * G +  total_O2 -P_CO2-0.5 * (P_H2O +  P_CO);// O2 in P-[lb mol]
P = P_CO +  P_N2 +  P_CO2 +  P_H2O +  P_O2 ;// Product-[lb mol]
Tf3 =  400  ;// Temperature of product-[degree F]
T_prod = Tf3 +  460 ;//Temperature of product-[degree Rankine]
P_prod =  35 ;// Pressure of product -[in.Hg]
V_gas = (G * m_vol * T_gas * Ps)/(Ts * P_gas);
V_air = (air * m_vol * T_air * Ps)/(Ts * P_air);
V_prod = (P * m_vol * T_prod * Ps)/(Ts * P_prod);
air_ft3 = V_air/V_gas ;//Air supplied per ft^3 of gas entered-[cubic feet]
P_ft3 =  V_prod/V_gas ;//Product gas produced per ft^3 of gas entered-[cubic feet]

printf(' Air supplied per ft^3 of gas entered %.2f cubic feet.\n ',air_ft3);
printf(' Product gas produced per ft^3 of gas entered %.2f cubic feet.\n',P_ft3);

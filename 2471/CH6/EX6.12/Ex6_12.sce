clear ;
clc;
// Example 6.12
printf('Example 6.12\n\n');
printf('Page No. 168\n\n');

// given
C_Rate = 2920;// Coal consumption rate in kg/h
S_Rate = 22.5*10^3;// Steam consumption rate in kg/h
Ps = 20;// Steam pressure in bar
Ts = 350;// Steam Temperature in degree celcius
Tf_in = 70;// Feed water temperature inlet economiser in degree celcius
Tf_out = 110;// Feed water temperature outlet economiser in degree celcius
Tm_b = 25;// Mean Boiler house temperature in degree celcius
Tm_f = 260;// Mean exit flue gas temperature in degree celcius
CO2_f = 15.8;// CO2 content of dry exit flue gas by volume
CO_f = 0;// CO content of dry exit flue gas by volume
C_ash = 0.025;// Carbon in ash in [%]
G = 0.005;// Grit produced in [%]
//Analysis of coal(as fired)
M = 0.105;// Moisture [%]
VM = 0.308;//Volatile matter [%]
FC = 0.497;// FIxed carbon [%]
Ash =0.09;// ASh [%]
C = 0.66;// Carbon percentage - [%]
H2 = 0.042;// Hydrogen percentage - [%]
S = 0.015;// Sulphur percentage - [%]
N2 = 0.012;// Nitrogen percentage - [%]
O2 = 0.076;// Oxygen percentage - [%]
H20 = 0.105;// Moisture percentage - [%]
G_CV = 26.90;// Gross Calorific Value in 10^6 J/kg
CV_C = 33.8*10^6;// Calorif Value of carbon in J/kg
CV_G = 33.8*10^6;// Calorif Value of Grit in J/kg
Ps_l = 20;// Pressure of steam leaving the boiler in bar

//(a) Calculation of excess air usage
//(a.1) Theoretical oxygen requirement
F = 1;// Fuel feed required in kg
w_C = 12; // mol. weight of C
w_H2 = 2; //mol. weight of H2
w_S = 32; //mol. weight of S
w_N2 = 28; // mol. weight of N2
w_O2 = 32; // mol. weight of O2
//Basis- Per kg of fuel
mol_C = C / w_C;// kmol of C
mol_H2 = H2 /w_H2;//kmol of H2
mol_S = S /w_S;//kmol of S
mol_N2 = N2 /w_N2;//kmol of N2
mol_O2 = O2 /w_O2;//kmol of O2
//Calculation of excess air
C_req = mol_C*1;//O2 required by entering C given by reaction C+O2->CO2 in kmol
H_req = mol_H2*0.5;//O2 required by entering H2 given by reaction H2+(1/2)O2->H20 in kmol
S_req = mol_S*1;//O2 required by entering S given by reaction S+O2->SO2 in kmol
O2_req = (C_req + H_req + S_req) - mol_O2;// in kmol
N2_air = (O2_req*76.8)/23.2;// in kmol (considering air consists of 76.8% N2 and 23.2% O2 )
printf('(a.1) \n')
printf('Total number of kmol of O2 required per kg of fuel is %3.4f kmol \n',O2_req)
printf('N2 associated with O2 is %3.4f kmol \n',N2_air)

//(a.2) Theoretical CO2 content of dry flue gas
T = C_req + S_req + mol_N2 + N2_air;// Total flue gas in kmol
CO2 = (C_req/T)*100;// in [%]
printf('(a.2) \n')
printf('Theoretical CO2 content of dry flue gas in percentage is %3.1f \n',CO2)

//(a.3)Excess air based on CO2 content
Ex_air = ((CO2 - CO2_f)/CO2_f)*100;//  in [%]
printf('(a.3) \n')
printf('Excess air based on CO2 content in percentage is %.0f \n\n',floor(Ex_air))


//(b) Fuel gas components
//(b.1) Composition per kg fuel
w_CO2 = 44;// mol. weight of CO2
w_SO2 = 64;// mol. weight of SO2
// FOR DRY GAS
CO2_d = C_req * w_CO2;// In kg/kg
SO2_d = S_req * w_SO2;// In kg/kg
N2_d = mol_N2 * w_N2;//  N2 from fuel In kg/kg
N2_air_d = N2_air * w_N2;//  N2 from air In kg/kg
T_N2 = N2_d + N2_air_d;// In kg/kg
T_dry = CO2_d + SO2_d + T_N2;// In kg/kg
printf('(b.1) \n')
printf('Composition of dry gas \n')
printf('CO2      %.3f   \n',CO2_d)
printf('SO2      %.2f   \n',SO2_d)
printf('N2 from fuel      %.2f   \n',N2_d)
printf('N2 from air      %.2f   \n',N2_air_d)
printf('Total dry air      %.2f kg/kg  \n\n',T_dry)

//FOR WET GAS
w_H2O = 18;// mol. weight of H2O
H2O_f = M;//  H2O from fuel
H2O_H2 = mol_H2 * w_H2O;// H2O from H2
T_H2O = H2O_f + H2O_H2;// in kg/kg
printf('Composition of wet gas \n')
printf('H2O from fuel      %.3f   \n',H2O_f)
printf('H2O from H2      %.3f   \n',H2O_H2)
printf('Total H2O in wet gas      %.3f kg/kg  \n\n',T_H2O)

//FOR DRY EXCESS AIR
O2_dry_ex = O2_req * w_O2 *0.3;//in kg/kg
N2_dry_ex = N2_air * w_N2 *0.3;//in kg/kg 
T_dry_ex = O2_dry_ex + N2_dry_ex;// in kg/kg
printf('Composition of dry excess air \n')
printf('O2      %.3f   \n',O2_dry_ex)
printf('N2      %.3f   \n',N2_dry_ex)
printf('Total dry excess air      %.3f kg/kg  \n\n',T_dry_ex)

//(b.2) Enthalpy
// From steam table or from the appendix C.2; at the given pressure and temperatures, the following specific heat capacity for different gases are obtained
Cp_CO2_T1 = 1.04*10^3;// Specific heat Capacity of CO2 at temperature Tm_f in J/kg-K
Cp_CO2_T2 = 0.85*10^3;// Specific heat Capacity of CO2 at temperature Tm_b in J/kg-K
Cp_SO2_T1 = 0.73*10^3;// Specific heat Capacity of SO2 at temperature Tm_f in J/kg-K
Cp_SO2_T2 = 0.62*10^3;// Specific heat Capacity of SO2 at temperature Tm_b in J/kg-K
Cp_N2_T1 = 1.07*10^3;// Specific heat Capacity of N2 at temperature Tm_f in J/kg-K
Cp_N2_T2 = 1.06*10^3;// Specific heat Capacity of N2 at temperature Tm_b in J/kg-K
Cp_O2_T1 = 0.99*10^3;// Specific heat Capacity of O2 at temperature Tm_f in J/kg-K
Cp_O2_T2 = 0.91*10^3;// Specific heat Capacity of O2 at temperature Tm_b in J/kg-K

Cp_dry_T1 = ((CO2_d * Cp_CO2_T1) + (SO2_d * Cp_SO2_T1) + (T_N2 * Cp_N2_T1))/T_dry;// in J/kg-K
Cp_dry_T2 = ((CO2_d * Cp_CO2_T2) + (SO2_d * Cp_SO2_T2) + (T_N2 * Cp_N2_T2))/T_dry;// in J/kg-K
Cp_air_T1 = ((O2_dry_ex * Cp_O2_T1) + (N2_dry_ex * Cp_N2_T1))/T_dry_ex;// in J/kg-K
Cp_air_T2 = ((O2_dry_ex * Cp_O2_T2) + (N2_dry_ex * Cp_N2_T2))/T_dry_ex;// in J/kg-K
printf('(b.2) \n')
printf('Specific heat Capacity of dry gas at 260 deg C is %.0f J/kg-K \n',Cp_dry_T1)
printf('Specific heat Capacity of dry gas at 25 deg C is %.0f J/kg-K \n',Cp_dry_T2)
printf('Specific heat Capacity of dry excess air at 260 deg C is %.0f J/kg-K \n',Cp_air_T1)
printf('Specific heat Capacity of dry excess air at 25 deg C is %.0f J/kg-K \n\n',Cp_air_T2)

// From Steam table or Appendix B.3, Enthalpy of superheated steam is obtained at 260 deg C and 1 bar
E_s = 2995*10^3;//in J/kg-K

//(c) Heat transferred to water
E_w = S_Rate / C_Rate;// Evaporation of water per kg of fuel in kg
E = (E_w*(461 - 293)*10^3)/10^6;// in 10^6 J
B = (E_w*(2797 - 461)*10^3)/10^6;// in 10^6 J
S = (E_w*(3139 - 2797)*10^3)/10^6;// in 10^6 J
printf('(c) \n')
printf('Heat to water in Economiser is %.1f *10^6 J \n',E)
printf('Heat to water in Boiler is %.2f *10^6 J \n',B)
printf('Heat to water in Superheater is %.2f *10^6 J \n\n',S)

//(d) Heat loss in flue gas
hl = 105*10^3;// Enthalpy of steam at 25 deg C (from steam table) in J/kg-K
loss_dry = T_dry*((Tm_f*Cp_dry_T1) - (Tm_b*Cp_dry_T2))/10^6;// in  10^6 J
loss_wet = T_H2O*(E_s - hl)/10^6;// in 10^6 J
loss_ex_air = T_dry_ex*((Tm_f*Cp_air_T1) - (Tm_b*Cp_air_T2))/10^6;// in 10^6 J
printf('(d) \n')
printf('Heat loss in dry flue gas is %.2f *10^6 J \n',loss_dry)
printf('Heat loss in wet flue gas is %.2f *10^6 J \n',loss_wet)
printf('Heat loss in dry excess air is %.2f *10^6 J \n\n',loss_ex_air)

//(e) Heat loss in combustile matter in ash
loss_ash = (Ash * C_ash * CV_C)/10^6;// in 10^6 J
printf('(e) Heat loss in combustile matter in ash is %.2f *10^6 J \n',loss_ash)

//(f) Heat loss in grit
loss_grit = (G * CV_G)/10^6;// in  10^6 J
printf('(f) Heat loss in grit is %.2f *10^6 J \n\n',loss_grit)

//(g) Radiation and unaccounted heat loss
h_sup = G_CV;// Heat supplied by the coal in 10^6 J
loss_rad = (h_sup - (E + B + S + loss_dry + loss_wet + loss_ex_air + loss_ash + loss_grit));// Radiation and unaccounted loss in 10^6 J
a = (h_sup/h_sup)*100;
b = (E/h_sup)*100;
c = (B/h_sup)*100;
d = (S/h_sup)*100;
e = (loss_dry/h_sup)*100;
f = (loss_wet/h_sup)*100;
g = (loss_ex_air/h_sup)*100;
h = (loss_ash/h_sup)*100;
i = (loss_grit/h_sup)*100;
j = (loss_rad/h_sup)*100;
T = b + c + d + e + f + g + h + i + j;
printf('(g) THERMAL BALANCE SHEET :\n\t\t\t\t 10^6 J \t percentage \n Heat supplied by coal \t\t %.2f \t\t %.0f\n Heat to loss in : economiser  \t  %.2f \t\t   %.1f\n \t\t       boiler \t %.2f \t\t  %.0f\n \t\t  superheater     %.2f \t\t   %.1f\n Heat loss in :  dry flue gas     %.2f \t\t   %.1f\n \t\t wet flue gas     %.2f \t\t   %.1f\n \t       dry eecess air     %.2f \t\t   %.1f\n Heat loss in ash \t\t  %.2f \t\t   %.1f\n Heat loss in grit \t\t  %.2f \t\t   %.1f\n Radiation and unaccounted loss   %.1f \t\t   %.1f\n TOTAL \t\t\t\t %.2f \t\t %.1f',h_sup,a,E,b,B,c,S,d,loss_dry,e,loss_wet,f,loss_ex_air,g,loss_ash,h,loss_grit,i,loss_rad,j,h_sup,T)




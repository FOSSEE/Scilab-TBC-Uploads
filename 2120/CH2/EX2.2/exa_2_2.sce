// Exa 2.2
clc;
clear;
close;
// Given data
p= 12;// in bar
p=p*10^5;// in N/m^2
v= 25;// in m^3
T= 30+273;// in K
// Part (a) Mass of each gas
//Formula p*v=m*R*T
R_U= 8314;// in J/kg-mole K
M_N2= 28.016;// in mole
M_O2= 32;// in mole
M_CO2= 44;// in mole
R_N2= R_U/M_N2;// in J/kg K
R_O2= R_U/M_O2;// in J/kg K
R_CO2= R_U/M_CO2;// in J/kg K
m_of_N2= p*v/(R_N2*T);// in kg
m_of_O2= p*v/(R_O2*T);// in kg
m_of_CO2= p*v/(R_CO2*T);// in kg
disp(m_of_N2,"The mass of Nitrogen gas stored in the vessel in kg is : ")
disp(m_of_O2,"The mass of Oxygen gas stored in the vessel in kg is : ")
disp(round(m_of_CO2),"The mass of Carbon dioxide gas stored in the vessel in kg is : ")

// Part (b) Molar Volume
// Formula v_molar= M*R*T/p= R_U*T/p
v_molar= R_U*T/p;// in m^3
disp(v_molar,"Molar volume of the gas mixture in m^3 is : ")

// Part (c) Average density
// rho_avg= total mass/total volume
rho_avg= (m_of_N2+m_of_O2+m_of_CO2)/v;// in kg/m^3
disp(rho_avg,"Average density of the gas mixture in kg/m^3 is : ")

// Exa 8.18
clc;
clear;
close;
// Given data
V_CH4= 0.14;// in m^3
V_CO= 0.35;// in m^3
V_CO2= 0.06;// in m^3
V_N2= 0.03;// in m^3
V_H2= 0.42;// in m^3
a= V_CH4+V_CO2+V_CO;
b= 2*V_CH4+V_H2;
// a+0.5*b+c= V_CO2+V_CO/2+0.21*5
c= V_CO2+V_CO/2+0.21*5-a-0.5*b;
d=V_N2+5*0.79;
total= a+c+d;
Vol_per_CO2= a/total*100;// in %
Vol_per_O2= c/total*100;// in %
Vol_per_N2= d/total*100;// in %
disp(Vol_per_CO2,"Volume percentage of CO2 is : ")
disp(Vol_per_O2,"Volume percentage of O2 is : ")
disp(Vol_per_N2,"Volume percentage of N2 is : ")
m_CO2= 44;// molecular mass
m_O2= 32;// molecular mass
m_N2=28;// molecular mass
mass_ratio_CO2= Vol_per_CO2/m_CO2;
mass_ratio_O2= Vol_per_O2/m_O2;
mass_ratio_N2= Vol_per_N2/m_N2;
total_mass_ratio= mass_ratio_CO2+mass_ratio_O2+mass_ratio_N2;
mass_per_CO2= mass_ratio_CO2/total_mass_ratio*100;
mass_per_O2= mass_ratio_O2/total_mass_ratio*100;
mass_per_N2= mass_ratio_N2/total_mass_ratio*100;
disp(mass_per_CO2,"Mass percentage of CO2 is : ")
disp(mass_per_O2,"Mass percentage of O2 is : ")
disp(mass_per_N2,"Mass percentage of N2 is : ")


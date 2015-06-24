// Exa 8.10
clc;
clear;
close;
// Given data
mC= 0.88;//mass of carbon in kg
mH2= 0.03;//mass of H2 in kg
mS= 0.005;//mass of S in kg
O2_mass= 2.66*mC + 8*mH2 + 2*mS;// in kg
Air_mass= O2_mass/0.23;// in kg
Air_mass= 1.5*Air_mass;// in kg (as 50% excess air is supplied)
disp(Air_mass,"Actula mass of air required per kg of fuel for complete combustion in kg is : ")
// The flue gases per kg of fuel will be:
CO2= 3.226;// in kg
N2= 13.04;// in kg
O2= 1.298;// in kg
total_mass= CO2+N2+O2;// in kg
CO2_per_by_mass= CO2/total_mass*100;// in %
O2_per_by_mass= O2/total_mass*100;// in %
N2_per_by_mass= N2/total_mass*100;// in %
disp(CO2_per_by_mass,"Percentage of CO2 by mass is : ")
disp(O2_per_by_mass,"Percentage of O2 by mass is : ")
disp(N2_per_by_mass,"Percentage of N2 by mass is : ")
M_wt_CO2= 44;
CO2_Per_M_com_M_wt= CO2_per_by_mass/M_wt_CO2;// % Mass composition molecular weight
M_wt_O2= 32;
O2_Per_M_com_M_wt= O2_per_by_mass/M_wt_O2;// % Mass composition molecular weight
M_wt_N2= 28;
N2_Per_M_com_M_wt= N2_per_by_mass/M_wt_N2;// % Mass composition molecular weight
total= CO2_Per_M_com_M_wt + O2_Per_M_com_M_wt + N2_Per_M_com_M_wt;
CO2_per_by_vol= CO2_Per_M_com_M_wt/total*100;// in %
O2_per_by_vol= O2_Per_M_com_M_wt/total*100;// in %
N2_per_by_vol= N2_Per_M_com_M_wt/total*100;// in %
disp(CO2_per_by_vol,"Percentage of CO2 by volume is : ")
disp(O2_per_by_vol,"Percentage of O2 by volume is : ")
disp(N2_per_by_vol,"Percentage of N2 by volume is : ")


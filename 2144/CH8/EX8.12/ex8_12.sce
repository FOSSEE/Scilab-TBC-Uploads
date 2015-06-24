// Exa 8.12
clc;
clear;
close;
// Given data
mC= 0.86;//mass of carbon in kg
mH2= 0.14;//mass of H2 in kg
maBYmf= (2.66*mC + 8*mH2)/0.23;// in kg/kg of fuel
Air_supp_deficiency= maBYmf/10;// in kg/kg of fuel
Air_saved= 16/(12*0.23);// in kg/kg of carbon
m1= Air_supp_deficiency/Air_saved;// mass of coal burns to carbon monoxide
m2= mC-m1;// mass of coal burns to carbon diooxide
CO2_formed= m2*3.66;// in kg
CO_formed= m1*28/12;// in kg
N2_formed= Air_supp_deficiency*0.77*9;// in kg
M_wt_CO2= 44;// molecular weight
M_wt_CO= 28;
M_wt_N2= 28;
CO2_rel_vol= CO2_formed/M_wt_CO2;
CO_rel_vol= CO_formed/M_wt_CO;
N2_rel_vol= N2_formed/M_wt_N2;
total_rel_vol=CO2_rel_vol+CO_rel_vol+N2_rel_vol;
CO2_vol= CO2_rel_vol/total_rel_vol*100;// in %
CO_vol= CO_rel_vol/total_rel_vol*100;// in %
N2_vol= N2_rel_vol/total_rel_vol*100;// in %
disp(CO2_vol,"Volumetric analysis of CO2 in % is : ")
disp(CO_vol,"Volumetric analysis of CO in % is : ")
disp(N2_vol,"Volumetric analysis of N2 in % is : ")

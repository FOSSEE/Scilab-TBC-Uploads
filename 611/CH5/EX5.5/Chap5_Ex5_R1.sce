// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 5,Page 166
//Title: Minimum power and maximum efficiency
//================================================================================================================
clear 
clc

//INPUT
T_ice=0;//temperature of the ice to be produced in degree celsius
m=5000;//rate at which ice is to be produced in kg/hour
T_water=0;//temperature of water used to produce ice in degree celsius
T_amb=40;//ambient temperature in degree celsius
T_source=100;//temperature of the source for operating heat engine in degree celsius
lambda_fusion=6.002;//latent heat of fusion of water in kJ/mol at 0 degree celsius
molar_mass=18*10^-3;//molar mass of water in kg/mol

//CALCULATION
T_L=T_water+273.15;//sink temperature of the refrigerating unit in K
T_H=T_amb+273.15;//source temperature of the refrigerating unit in K
COP=(T_L)/(T_H-T_L);//calculation of COP of the refrigerating unit using Eq.(5.20) (no unit)
Q_L=((m/3600)/molar_mass)*(lambda_fusion);//calculation of the energy from the sink taken up by the refrigerator in kW
W=(Q_L)/(COP);//calculation of the minimum power required to operate the refrigerator using Eq.(5.20)in kW
T1=T_source+273.15;//temperature of the source of the heat engine in K
T2=T_amb+273.15;//temperature of the sink of the heat engine in K
n_heatengine=(T1-T2)/T1;//calculation of the efficiency of heat engine using Eq.(5.18) (no unit)
Q1=W/n_heatengine;//calculation of the energy absorbed by the heat engine using Eq.(5.1) in kW
//calculation of the ratio of energy rejected by both the devices to ambient atmosphere to the energy absorbed by the refrigerator (no unit)
energy_ratio=(Q1+Q_L)/Q_L;

//OUTPUT
mprintf("\n The minimum power required to operate the refrigerator=%0.2f kW\n",W);
mprintf("\n The maximum possible efficiency of the heat engine=%0.4f \n",n_heatengine);
mprintf("\n Ratio of the energy rejected to the ambient atmosphere to the energy absorbed from the water=%0.4f \n",energy_ratio);

//===============================================END OF PROGRAM===================================================

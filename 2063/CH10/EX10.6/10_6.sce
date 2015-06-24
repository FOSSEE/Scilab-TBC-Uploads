clc
clear
//Input data
T2=298;//Maximum temperature at which ammonia refrigerating system works in K
T1=263;//Minimum temperature at which ammonia refrigerating system works in K
mf=5;//Fluid flow rate in kg/min
sf1=0.5443;//Liquid entropy at 298 K in kJ/kg K
sf2=1.1242;//Liquid entropy at 263 K in kJ/kg K
hfg1=1297.68;//Latent heat at 298 K in kJ/kg
hfg2=1166.94;//Latent heat at 263 K in kJ/kg
hf1=135.37;//Liquid enthalpy at point 1 in graph in kJ/kg
hf2=298.9;//Liquid enthalpy at point 2 in graph in kJ/kg
TR=210;//One tonne refrigeration in TR

//Calculations
s2=sf2+(hfg2/T2);//Entropy at point 2 in kJ/kg
x1=(s2-sf1)/(hfg1/T1);//Dryness fraction at point 1
h1=hf1+(x1*hfg1);//Enthalpy at point 1 in kJ/kg
h=h1-hf2;//Heat extracted of refrigerating effect produced per kg of refrigerant in kJ/kg
ht=mf*h;//Total heat extracted at a fluid flow rate of 5 kg/min in kJ/min
C=ht/TR;//Capacity of refrigerating in TR

//Output
printf('The capacity of refrigerator is %3.0f TR',C)

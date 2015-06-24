clc
clear
//Input data
T2=298;//Maximum temperature at which CO2 machine works in K
T1=268;//Minimum temperature at which CO2 machine works in K
sf1=-0.042;//Liquid entropy at 268 K in kJ/kg K
hfg1=245.3;//Latent heat of gas at 268 K in kJ/kg
sf2=0.251;//Liquid entropy in kJ/kg K
hfg2=121.4;//Latent heat of gas at 298 K in kJ/kg
hf1=-7.54;//Liquid enthalpy at 268 K in kJ/kg
hf2=81.3;//Liquid enthalpy at 298 K in kJ/kg
hf3=81.3;//Enthalpy at point 3 in graph in kJ/kg

//Calculations
s2=sf2+(hfg2/T2);//Entropy at point 2 from the graph in kJ/kg K
x1=(s2-sf1)/(hfg1/T1);//Dryness fraction at point 1
h1=hf1+(x1*hfg1);//Enthalpy at point 1 in kJ/kg
h2=hf2+hfg2;//Enthalpy at point 2 in kJ/kg
COP=(h1-hf3)/(h2-h1);//Coefficient of performance for a CO2 machine working at given temperatures

//Output data
printf('Theoretical COP for a CO2 machine working at given temperatures is %3.2f',COP)

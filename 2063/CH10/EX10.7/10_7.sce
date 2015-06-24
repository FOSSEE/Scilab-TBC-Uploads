clc
clear
//Input data
T1=263;//Minimum temperature at which ammonia refrigerating machine works in K
T2=303;//Maximum temperature at which ammonia refrigerating machine works in K
x1=0.6;//Dryness fraction of ammonia during suction stroke
sf1=0.5443;//Liquid entropy at 263 K in kJ/kg K
hfg1=1297.68;//Latent heat at 263 K in kJ/kg
sf2=1.2037;//Liquid entropy at 303 K in kJ/kg K
hfg2=1145.8;//Latent heat at 303 K in kJ/kg
hf1=135.37;//Liquid enthalpy at 263 K in kJ/kg
hf2=323.08;//Liquid enthalpy at 303 K in kJ/kg

//Calculations
s1=sf1+((x1*hfg1)/T1);//Entropy at point 1 in kJ/kg K
x2=(s1-sf2)/(hfg2/T2);//Entropy at point 2 in kJ/kg K
h1=hf1+(x1*hfg1);//Enthalpy at point 1 in kJ/kg
h2=hf2+(x2*hfg2);//Enthalpy at point 2 in kJ/kg
COP=(h1-hf2)/(h2-h1);//Theoretical COP of ammonia refrigerating machine

//Output
printf('The theoretical COP of a ammonia refrigerating machine working between given temperatures is %3.2f',COP)

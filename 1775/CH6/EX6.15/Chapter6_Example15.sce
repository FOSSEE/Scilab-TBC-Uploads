//Chapter-6, Illustration 15, Page 322
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
T2=298;//Temperature at point 2 in K
T1=268;//Temperature at point 1 in K
hf1=-7.54;//Liquid Enthalpy at T1 in kJ/kg
x1=0.6;//Quality factor 1
hfg1=245.3;//Latent heat at T1 in kJ/kg
sf1=0.251;//Liquid Entropy at T1 in kJ/kg-K
s1=0.507;//Entropy at point 1 in kJ/kg-K
hfg2=121.4;//Latent heat at T2 in kJ/kg
hf2=81.3;//Liquid Enthalpy at T2 in kJ/kg
h4=hf2;//Enthalpy at point 4 in kJ/kg

//CALCULATIONS
h1=hf1+(x1*hfg1);//Enthalpy at point 1 in kJ/kg
x2=((s1-sf1)*T2)/hfg2;//Quality factor 2
h2=hf2+(x2*hfg2);//Enthalpy at point 2 in kJ/kg
COP=(h1-h4)/(h2-h1);//COP of the machine

//OUTPUT
mprintf('COP of the machine is %3.2f',COP)




//==============================END OF PROGRAM=================================

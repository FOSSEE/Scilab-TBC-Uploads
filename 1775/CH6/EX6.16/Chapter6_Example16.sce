//Chapter-6, Illustration 16, Page 323
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=25;//Pressure at point 1 in bar
P2=60;//Pressure at point 2 in bar
h2=208.1;//Vapour enthalpy at P2 in kJ/kg
h3=61.9;//Liquid enthalpy at P2 in kJ/kg
h4=h3;//Liquid enthalpy at P2 in kJ/kg
s2=0.703;//Vapour entropy at P2 in kJ/kg-K
sf1=-0.075;//Liquid entropy at P1 in kJ/kg-K
sfg1=0.971;//Entropy in kJ/kg-K
hf1=-18.4;//Liquid Enthalpy at P1 in kJ/kg
hfg1=252.9;//Latent heat at P1 in kJ/kg
m=5;//Refrigerant flow in kg/min

//CALCULATIONS
x1=(s2-sf1)/sfg1;//Quality factor 1
h1=hf1+(x1*hfg1);//Enthalpy at point 1 in kJ/kg
COP=(h1-h4)/(h2-h1);//Co-efficient of performance
QL=(m*(h1-h4))/60;//Capacity of the refrigerator in kW

//OUTPUT
mprintf('COP of refrigerator is %3.2f \n Capacity of refrigerator is %3.2f kW',COP,QL)



//==============================END OF PROGRAM=================================

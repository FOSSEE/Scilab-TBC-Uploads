//Chapter-6, Illustration 4, Page 310
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=1.2;//Pressure at point 1 in bar
P2=7;//Pressure at point 2 in bar
m=0.05;//mass flow rate of refrigerant in kg/s
h1=340.1;//Enthalpy at point 1 from refrigerant-12 tables in kJ/kg
s1=1.57135;//Entropy at point 1 from refrigerant-12 tables in kJ/kg-K
s2=1.57135;//Entropy at point 2 from refrigerant-12 tables in kJ/kg-K
h2=372;//Enthalpy at point 2 from refrigerant-12 tables in kJ/kg
h3=226.575;//Enthalpy at point 3 from refrigerant-12 tables in kJ/kg
h4=226.575;//Enthalpy at point 4 from refrigerant-12 tables in kJ/kg

//CALCULATIONS
Q2=m*(h1-h4);//Rate of heat removed from the refrigerated space in kW
W=m*(h2-h1);//Power input to the compressor in kW
Q1=m*(h2-h3);//Rate of heat rejection to the environment in kW
COP=Q2/W;//Co-efficient of performance

//OUTPUT
mprintf('Rate of heat removed from the refrigerated space is %3.2f kW \n Power input to the compressor is %3.3f kW \n Rate of heat rejection to the environment is %3.2f kW \n Co-efficient of performance is %3.2f',Q2,W,Q1,COP)




//==============================END OF PROGRAM=================================

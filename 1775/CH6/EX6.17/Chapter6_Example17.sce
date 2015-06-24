//Chapter-6, Illustration 17, Page 324
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
T1=271;//Temperature at point 1 in K
T=265;//Temperature at point 1' in K
Ta=303;//Temperature at point 2' in K
Cpv=0.733;//Specific heat of vapour in kJ/kg
Cpl=1.235;//Specific heat of liquid in kJ/kg
h=184.07;//Liquid enthalpy at T in kJ/kg
s=0.7;//Entropy at point 1' in kJ/kg-K
sa=0.685;//Vapour entropy at Ta in kJ/kg-K
ha=199.62;//Enthalpy at point 2' in kJ/kg
hfb=64.59;//Liquid enthalpy at Ta in kJ/kg
DT3=5;//Temperature difference in oC
Q=2532;//Refrigeration capacity in kJ/min

//CALCULATIONS
s2=s+(Cpv*((log(T1/T))/(log(2.718))));//Entropy at point 1 in kJ/kg-K
h1=h+(Cpv*(T1-T));//Enthalpy at point 1 in kJ/kg-K
T2=(2.718^((s2-sa)/Cpv))*Ta;//Temperature at point 2 in K
h2=ha+(Cpv*(T2-Ta));//Enthalpy at point 2 in kJ/kg
h4=hfb-(Cpl*DT3);//Enthalpy at point 4 in kJ/kg
COP=(h1-h4)/(h2-h1);//Co-efficient of performance
m=Q/(h1-h4);//Mass flow rate of refrigerant in kJ/min
P=(m*(h2-h1))/(60*12);//Power required in kW/TR

//OUTPUT
mprintf('COP is %3.2f \n Theoretical power required per tonne of refrigeration is %3.3f kW/TR',COP,P)












//==============================END OF PROGRAM=================================

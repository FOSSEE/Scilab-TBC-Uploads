//Chapter-6, Illustration 14, Page 321
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
P1=2.5;//Pressure at point 1 in bar
P3=9;//Pressure at point 3 in bar
COPr=0.65;//Ratio of actual COP to the theoretical COP
m=5;//Refrigerant flow in kg/min
T1=309;//Temperature at point 1 in K
T2s=300;//Temperature at point 2s in K
h1=570.3;//Enthalpy at P1 from the given tables in kJ/kg
h4=456.4;//Enthalpy at P3 from the given tables in kJ/kg
h2g=585.3;//Enthalpy at P3 from the given tables in kJ/kg
s2=4.76;//Entropy at P1 from the given tables in kJ/kg-K
s2g=4.74;//Entropy at P3 from the given tables in kJ/kg-K
Cp=0.67;//Specific heat at P3 in kJ/kg-K

//CALCULATIONS
T2=(2.718^((s2-s2g)/Cp))*T2s;//Temperature at point 2 in K
h2=h2g+(Cp*(T2-T2s));//Enthalpy at point 2 in kJ/kg
COPR=(h1-h4)/(h2-h1);//Refrigerant COP
COPact=COPr*COPR;//Actual COP
qL=COPact*(h2-h1);//Heat rejected in kJ/kg
QL=((m*qL*60)/3600)/3.516;//Cooling produced per kg of refrigerant in tonnes of refrigeration

//OUTPUT
mprintf('Theoretical COP is %3.2f \n Net cooling produced per hour is %3.2f TR',COPR,QL)




//==============================END OF PROGRAM=================================

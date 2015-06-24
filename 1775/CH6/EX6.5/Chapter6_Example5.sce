//Chapter-6, Illustration 5, Page 311
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
T2=40;//Temperature at point 2 in oC
T1=-10;//Temperature at point 1 in oC
h2=367.155;//Enthalpy at point 2 from refrigerant-12 tables in kJ/kg
s2=1.54057;//Entropy at point 2 from refrigerant-12 tables in kJ/kg-K
s1=1.54057;//Entropy at point 1 from refrigerant-12 tables in kJ/kg-K
sg=1.56004;//Entropy from refrigerant-12 tables in kJ/kg-K
sf=0.96601;//Entropy from refrigerant-12 tables in kJ/kg-K
hf=190.822;//Enthalpy from refrigerant-12 tables in kJ/kg-K
hfg=156.319;//Enthalpy from refrigerant-12 tables in kJ/kg-K
h3=238.533;//Enthalpy at point 3 from refrigerant-12 tables in kJ/kg-K
h4=h3;//Enthalpy at point 4 from refrigerant-12 tables in kJ/kg-K

//CALCULATIONS
x1=(s1-sf)/(sg-sf);//Quality factor
h1=hf+(x1*hfg);//Enthalpy at point 1 from refrigerant-12 tables in kJ/kg
COP=(h1-h4)/(h2-h1);//Co-efficient of performance

//OUTPUT
mprintf('COP of the system is %3.2f',COP)



//==============================END OF PROGRAM=================================

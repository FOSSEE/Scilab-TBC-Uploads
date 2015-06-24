//Chapter-6, Illustration 9, Page 316
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
T2=40;//Temperature at point 2 in oC
T1=-5;//Temperature at point 1 in oC
h2=367.155;//Enthalpy at point 2 from F-12 tables in kJ/kg
sg=1.55717;//Entropy from F-12 tables in kJ/kg-K
s1=1.54057;//Entropy at point 1 from F-12 tables in kJ/kg-K
sf=0.98311;//Entropy from F-12 tables in kJ/kg-K
hf=195.394;//Enthalpy from F-12 tables in kJ/kg
hfg=153.934;//Enthalpy from F-12 tables in kJ/kg
h4=238.533;//Enthalpy at point 4 from F-12 tables in kJ/kg
h4s=218;//Enthalpy at point 4 with subcooling from F-12 tables in kJ/kg

//CALCULATIONS
x1=(s1-sf)/(sg-sf);//Quality factor
h1=hf+(x1*hfg);//Enthalpy at point 1 from refrigerant-12 tables in kJ/kg
COPns=(h1-h4)/(h2-h1);//Co-efficient of performance with no subcooling
COPs=(h1-h4s)/(h2-h1);//Co-efficient of performance with subcooling

//OUTPUT
mprintf('COP with no subcooling is %3.3f \n COP with subcooling is %3.3f',COPns,COPs)








//==============================END OF PROGRAM=================================

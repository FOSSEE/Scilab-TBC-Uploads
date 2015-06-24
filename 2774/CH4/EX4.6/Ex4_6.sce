clc
// initialization of variables
m=1 // mass of nitrogen in kg
T1=300 // initial temperature in Kelvin
T2=1200 // final temperature in Kelvin
M=28 // in kg/kmol
// part(a)
// the enthalpy change is found from gas table in App.E
delh=36777-8723 // from gas table
delH=delh/M 
printf("The entalpy change from gas table is "+string(delH)+" kJ/kg \n")

// part (b) 
Cp=1.042 // from table B.2
delH=Cp*(T2-T1)
printf(" The entalpy change  by assuming constant specific heat is "+string(delH)+" kJ/kg")

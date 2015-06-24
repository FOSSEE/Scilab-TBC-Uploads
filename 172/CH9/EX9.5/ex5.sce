//example 5
//entropy generation
clear
clc
h1=2865.54 //specific heat of enthalpy at state 1 in kJ/kg
h2=83.94 //specific heat of enthalpy  at state 2 in kJ/kg
h3=2725.3 //specific heat of enthalpy at state 3 in kJ?kg
s1=7.3115 //specific entropy at state 1 in kJ/kg-K
s2=0.2966 //specific entropy at state 2 in kJ/kg-K
s3=6.9918 //specific entropy at state 3in kJ/kg-K
m1=2 //mass flow rate at state 1 in kg/s
m2=m1*(h1-h3)/(h3-h2) //mass flow rate at state 2 in kg/s
m3=m1+m2 //mass flow rate at state 3 in kg/s
Sgen=m3*s3-m1*s1-m2*s2 //entropy generation in the process
printf("\n hence,entropy generated in this process is Sgen=%.3f kW/K.\n",Sgen)
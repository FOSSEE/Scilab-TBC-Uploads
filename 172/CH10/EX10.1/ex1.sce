//example 1
//Calculating reversible work
clear
clc
//Form the Steam Tables,the inlet and the exit state properties are 
hi=171.95 //initial specific heat of enthalpy in kJ/kg
si=0.5705 //initial specific entropy in kJ/kg-K
se=2.1341 //final specific entropy in kJ/kg-K
he=765.34 //final specific heat of enthalpy in kJ/kg-K
m=5 //mass flow rate of feedwater in kg/s
q1=900/m //heat added by one of the sources in kJ/kg
q2=he-hi-q1 //second heat transfer in kJ/kg
To=25+273.3 //Temp. of the surroundings in K
T1=100+273.2 //temp. of reservoir of one of the source in K
T2=200+273.2 //temp. of reservoir of second source in K
wrev=To*(se-si)-(he-hi)+q1*(1-To/T1)+q2*(1-To/T2) //reversible work in kJ/kg
printf("\n Hence, the irreversibility is i=%.1f kJ/kg.\n",wrev)

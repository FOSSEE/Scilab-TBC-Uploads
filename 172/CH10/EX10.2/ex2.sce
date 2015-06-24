//example 2
//Calculating reversible work
clear
clc
//Form the Steam Tables,the inlet and the exit state properties are
hi=298.6 //initial specific heat of enthalpy in kJ/kg
si=6.8631 //initial specific entropy in kJ/kg-K
se=7.4664 //final specific entropy in kJ/kg-K
he=544.7 //final specific heat of enthalpy in kJ/kg-K
q=-50 //heat lost to surroundings in kJ/kg
w=hi-he+q //work in kJ/kg
To=25+273.2 //Temp. of the surroundings in K
P1=100 //Pressure of ambient air in kPa
P2=1000 //Final pressure of air after compression in kPa
R=0.287 //Universal gas constant in kJ/kg-K
wrev=To*(se-si-R*log(P2/P1))-(he-hi)+q*(1-To/To)//reversible work for the given change of state in kJ/kg
i=wrev-w //irreversibility in kJ/kg
printf("\n Hence, the irreversibility is i=%.1f kJ/kg.\n",i)

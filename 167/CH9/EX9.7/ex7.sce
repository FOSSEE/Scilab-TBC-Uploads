//ques7
//Actual Gas-Turbine Cycle with Regeneration
clear
clc
//The T-s diagram of the cycle is shown in Fig. 9–41 in book
h2a=605.39;//enthalpy of heat(a) at state 2 in  kJ/kg
h4a=880.36;//enthalpy of heat(a) at state 4 in kJ/kg
e=0.80;//effectiveness
h5=e*(h4a-h2a)+h2a;//enthalpy of heat at state 5 in kJ/kg
h3=1395.6;//enthalpy of heat at state 3 in kJ/kg
Qin=h3-h5;//heat input in kJ/kg
//This represents a savings of 220.0 kJ/kg from the heat input requirements. The addition of a regenerator (assumed to be frictionless) does not affect the net work output
w=210.41;//work dodne in kJ/kg
nth=w/Qin;//efficiency 
printf(' Thermal efficiency = %.3f ',nth);


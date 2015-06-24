//example 6
//Cooling and Dehumidification of Air
clear
clc
disp('This is a steady-flow process and thus the mass flow rate of dry air remains constant during the entire process')
h1=85.4 //Specific enthalpy for state 1 in kJ/kg dry air 
w1=0.0216 //kg water/kg dry air 
v1=0.889 //Specific volume for state 1 in m3/kg dry air
h2=39.3 // Specific enthalpy for state 2 in kJ/kg dry air
w2=0.0100 //kg water/kg dry air
V1=10 //volume flow rate of air in m^3/min
hw=58.8 //enthalpy of saturated liquid water at 14°C in kJ/kg
ma=V1/v1 //mass flow rate of dry air in kg/min
mw=ma*(w1-w2) //rate of moisture removal in m^3/min
qout=ma*(h1-h2)-mw*hw //rate of heat removal from air in kJ/min
printf("\n Hence, the rate of moisture removal from dry air is = %.3f kg/min. \n",mw);
printf("\n and rate of heat removal is = %.0f kJ/min. \n",qout);
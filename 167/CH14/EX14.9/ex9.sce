//example 9
//Cooling of a Power Plant by a Cooling Tower
clear
clc
h1=42.2 // Specific enthalpy of dry air in kJ/kg 
w1=0.0087 //kg water/kg dry air
v1=0.842 //specific volume of dry air in m3/kg
h2=100.0 //Specific enthalpy of leaving air in kJ/kg 
w2=0.0273 //kg water/kg dry air
h3=146.64 //Specific enthalpy of warm water in kJ/kg
h4=92.28 //Specific enthalpy of cool water in kJ/kg
M3=100 //mass flow rate of warm water in kg/s
Ma=M3*(h3-h4)/((h2-h1)-(w2-w1)*h4) //in m^3/s
V1=Ma*v1//volume flow rate of air into the cooling tower in m^3/s
Mmakeup=Ma*(w2-w1) //mass flow rate of required makeup water in kg/s
printf("\n Hence, the mass flow rate of required makeup water= %.2f kg /s. \n",V1);
printf("\n the volume flow rate of air into the cooling tower = %.2f m^3/s. \n",Mmakeup);
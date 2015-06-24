//ques1
//to determine isentropic stagnation pressure and temperature 
clear
clc
T=300;//Temperature of air in K
P=150;//Pressure of air in kPa
v=200;//velocity of air flow n m/s
Cp=1.004;//specific heat at constant pressure in kJ/kg
To=v^2/(2000*Cp)+T;//stagnation temperature in K
k=1.4;//constant
Po=P*(To/T)^(k/(k-1));//stagnation pressure in kPa
printf('Stagnation Temperature = %.1f K \n',To);
printf(' Stagnation Pressure = %.1f kPa \n',Po);
//example 9
//Rate of Entropy Generation
clear
clc
disp('From R-410a tables,we get')
hi=280.6 //in kJ/kg
he=307.8 //in kJ/kg
si=1.0272 //in kJ/kg
se=1.0140 //in kJ/kg
m=0.08 //flow rate of refrigerant in kg/s
P=3 //electrical power input in kW
Qcv=m*(he-hi)-P //in kW
To=30 //in Celsius
Sgen=m*(se-si)-Qcv/(To+273.2) //rate of entropy generation 
printf("\n Hence,the rate of entropy generation for this process is Sgen=%.5f kW/K. \n",Sgen)
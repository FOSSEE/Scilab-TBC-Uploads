clc
clear

//Input data
dT=37 //Temperature difference between air inside the tyre and nozzle exit
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K

//Calculation
C=sqrt(2*Cp*dT) //Exit velocity of air in m/s

//Output
printf('Exit velocity of air is %3.1f m/s',C)

clc
clear

//Input data
m=5 //Propellent rate in kg/s
Pamb=1.013 //Ambient pressure in bar
Pe=1.02 //Nozzle exit pressure in bar
D=0.1 //Nozzle exit diameter in m
Ce=1400 //Exit jet velocity in m/s

//Calculation
Ae=%pi*D^2/4 //Exit area in m^2
F=(m*Ce)+((Pe-Pamb)*Ae) //Thrust in N

//Output
printf('Thrust is %3i N',F)

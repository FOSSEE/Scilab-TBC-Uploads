clc
clear
//Input data
h=60//Height of the Niagra falls in m
S=4190//Specific of water in J/kg.K

//Calculations
dt=(h*9.8)/S//The temperature difference in K

//Output
printf('The temperature difference is %3.5f K',dt)

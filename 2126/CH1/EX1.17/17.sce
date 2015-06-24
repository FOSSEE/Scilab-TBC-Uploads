clc
clear

//Input data
M=2.5 //Mach number 
h=10 //Height in km

//Calculation
alp=asind(1/M) //Mach cone angle in degree
d=10/tand(alp) //Distance the jet would cover before a sonic boom is heard on ground in km

//Output
printf('Distance the jet would cover before a sonic boom is heard on ground is %3.2f km',d)

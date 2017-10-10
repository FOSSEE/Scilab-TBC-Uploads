//Example 6_10
clc();
clear;
//To find the average speed of the nitrogen molecule in air
ap=1.01*10^5   //units in Newton/meter^2
nofmol=2.69*10^25   //Number of molecules
nitmass=4.65*10^-26   //units in Kg
v=sqrt((ap*3)/(nofmol*nitmass))   //units in meters/sec
printf("The average speed of the nitrogen molecule in air is V=%d meters/sec",v)

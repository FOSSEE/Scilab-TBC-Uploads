
clc
clear
//Input data
n=4//Number of jets
d=60//Diameter of each jet in mm
a=165//Angle in degrees
v=45//Speed of the bucket wheel in m/s
de=1000//Density in kg/m^3

//Calculations
v1=(2*v)//Jet velocity in m/s
Q=(3.14/4)*(d/1000)^2*v1//Discharge in m^3/s
P=(1-cosd(a))*(v1^2/4)*Q*de*10^-3//Power developed in kW
P4=(P*4)//For four jets in kW
nd=((1-cosd(a))/2)*100//Maximum efficiency in percent

//Output
printf('Velocity of the jet for maximum efficiency is %3.0f m/s \n Power developed is %i kW \n Hydraulic efficiency is %3.1f percent',v1,P4,nd)

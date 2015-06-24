//Chapter-4, Illustration 25, Page 218
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P0=100;//Steam pressure in bar
T0=773;//Steam temperature in K
a1=70;//Nozzle angle in degrees
ns=0.78;//Steam efficiency
m=100;//Mass flow rate of steam in kg/s
D=1;//Turbine diameter in m
N=3000;//Turbine speed in rpm
h0=3370;//Steam enthalpy from Moiller chart in kJ/kg
P4=27;//Pressure at point 4 in bar
T4=638;//Temperature at point 4 in K
v4=0.105;//Specific volume at P4 from mollier chart in (m^3)/kg
ns=0.65;//Stages efficiency

//CALCULATIONS
U=(3.147*D*N)/60;//Blade speed in m/s
C1=(4*U)/sind(a1);//Steam speed in m/s
Ca=C1*cosd(a1);//Axial velocity in m/s
b1=atand((3*U)/Ca);//Blade angle at inlet for first stage in degrees
b2=b1;//Blade angle at exit for first stage in degrees
b4=atand(U/Ca);//Blade angle at exit for second stage in degrees
b3=b4;//Blade angle at inlet for second stage in degrees
WI=m*6*(U^2);//Power developed in first stage in MW
WII=m*2*(U^2);//Power developed in second stage in MW
W=(WI+WII)/(10^6);//Total power developed in MW
Dh=(W*1000)/100;//Difference in enthalpies in kJ/kg
Dhs=(W*1000)/(ns*100);//Difference in enthalpies in kJ/kg
h4=h0-Dh;//Enthalpy at point 4 in kJ/kg
h4s=h0-Dhs;//Enthalpy at point 4s in kJ/kg
h=(m*v4)/(3.147*D*Ca);//Rotor blade height in m

//OUTPUT
mprintf('Rotor blade angles for first stage are %3.2f degrees and %3.2f degrees \n Rotor blade angles for second stage are %3.2f degrees and %3.2f degrees \n Power developed is %3.2f MW \n Final state of steam at first stage is %3.1f kJ/kg \n Final state of steam at second stage is %3.2f kJ/kg \n Rotor blade height is %3.4f m',b1,b2,b3,b4,W,h4,h4s,h)










//==============================END OF PROGRAM=================================

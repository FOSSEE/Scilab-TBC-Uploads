//Chapter-4, Illustration 24, Page 215
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
v2=0.041;//Specific volume at P2 from steam tables in (m^3)/kg
v4=0.05;//Specific volume at P4 from steam tables in (m^3)/kg

//CALCULATIONS
U=(3.147*D*N)/60;//Blade speed in m/s
C1=(2*U)/sind(a1);//Steam speed in m/s
b1=atand(tand(a1)/2);//Blade angle at inlet for first stage in degrees
b2=b1;//Blade angle at exit for first stage in degrees
b3=b1;//Blade angle at inlet for second stage in degrees
b4=b2;//Blade angle at exit for second stage in degrees
Wt=(4*m*(U^2))/(10^6);//Total workdone in MW
Dh=(2*(U^2))/1000;//Difference in enthalpies in kJ/kg
Dhs=Dh/ns;//Difference in enthalpies in kJ/kg
h2=h0-Dh;//Enthalpy at point 2 in kJ/kg
h2s=h0-Dhs;//Enthalpy at point 2s in kJ/kg
Dh2=(2*(U^2))/1000;//Difference in enthalpies in kJ/kg
Dh2s=Dh2/ns;//Difference in enthalpies in kJ/kg
h4=h2-Dh2;//Enthalpy at point 4 in kJ/kg
h4s=h2-Dh2s;//Enthalpy at point 4s in kJ/kg
Ca=C1*cosd(a1);//Axial velocity in m/s
hI=(m*v2)/(3.147*D*Ca);//Blade height at first stage in m/s
hII=(m*v4)/(3.147*D*Ca);//Blade height at second stage in m/s

//OUTPUT
mprintf('Rotor blade angles for first stage are %3.2f degrees and %3.2f degrees \n Rotor blade angles for second stage are %3.2f degrees and %3.2f degrees \n Power developed is %3.2f MW \n Final state of steam at first stage is %3.2f kJ/kg \n Final state of steam at second stage is %3.2f kJ/kg \n Blade height at first stage is %3.4f m \n Blade height at second stage is %3.4f m',b1,b2,b3,b4,Wt,h2s,h4s,hI,hII)














//==============================END OF PROGRAM=================================

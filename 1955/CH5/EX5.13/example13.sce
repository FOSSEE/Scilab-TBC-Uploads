clc
clear
//input data
P0=100//Initial pressure of steam in bar
T0=773//Initial temperature of steam in K
D=1//Turbine diameter in m
N=3000//Speed of turbine in rpm
m=100//Mass flow rate of steam in kg/s
a1=70//Exit angle of the first stage nozzle in degree
ns=0.65//Stage efficiency of first stage 

//calculations
U=(3.1415*D*N)/60//Mean blade speed in m/s
C1=(4*U)/sind(a1)//Velocity of steam at exit from nozzle in m/s
Ca=C1*cosd(a1)//Axial velocity in m/s
Wx1=3*U//Inlet whirl velocity in m/s
b11=atand(Wx1/Ca)//Inlet angle of the rotor blade in degree
b21=b11//Outlet angle of the rotor blade in degree
C2=Ca//Velocity of steam at exit from stage in m/s
b22=atand(U/Ca)//Outlet angle of the rotor blade  in degree
b12=b22//Inlet angle of the rotor blade in  in degree
W=m*8*U^2*10^-6//Total work done or power developed in MW
printf('The values of enthalpy and specific volume are taken from the mollier chart at inlet and exit conditions respectively')
h0=3370//Enthalpy at beginning of  stage in kJ/kg
dh04=(W*10^3)/m//Change in enthalpy  of turbine in kJ/kg
dh04s=dh04/ns//Change in enthalpy isentropically of turine  in kJ/kg
h4=h0-dh04//Enthalpy at beginning of stage in kJ/kg
h4s=h0-dh04s//Isentropic enthalpy at the end of  stage in kJ/kg
v4=0.105//Specific volume at the end of stage in m^3/kg
h=(m*v4)/(3.1415*D*Ca)//Rotor blade height in m

printf('\n\n(a)rotor blade angles\n    Inlet angle of the rotor blade is %3.2f degree\n    Outlet angle of the rotor blade is %3.2f degree\n    Inlet angle of the rotor blade in second stage is %3.2f degres\n    Outlet angle of the rotor blade in second stage is %3.2f degree\n(b)Total work done or Power developed in both the stages is %3.2f MW\n(c)final state of steam\n    Enthalpy at beginning of first stage is %3i kJ/kg\n    Enthalpy at beginning of stage is %3.1f kJ/kg\n    Isentropic enthalpy at the end of stage is %3.2f kJ/kg\n    Specific volume at the end of stage is %3.3f m^3/kg\n(d)rotor blade height is %3.4f m',b11,b21,b12,b22,W,h0,h4,h4s,v4,h)

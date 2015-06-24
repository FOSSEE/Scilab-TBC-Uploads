clc
clear
//input data
P0=100//Initial pressure of steam in bar
T0=773//Initial temperature of steam in K
D=1//Turbine diameter in m
N=3000//Speed of turbine in rpm
m=100//Mass flow rate of steam in kg/s
a1=70//Exit angle of the first stage nozzle in degree
ns1=0.78//Stage efficiency of first stage 
ns2=ns1//Stage efficiency of second stage

//calculations
U=(3.1415*D*N)/60//Mean blade speed in m/s
C1=(2*U)/sind(a1)//Velocity of steam at exit from nozzle in m/s 
b11=atand(tand(a1)/2)//Inlet angle of the rotor blade in degree
b21=b11//Outlet angle of the rotor blade in degree
b12=b21//Inlet angle of the rotor blade in second stage in degree
b22=b12//Outlet angle of the rotor blade in second stage in degree
W=4*m*U^2*10^-6//Total work done in both the stages in MW
dh02=2*U^2*10^-3//Change in enthalpy in first stage of turbine in kJ/kg
dh02s=(dh02/ns1)//Change in enthalpy isentropically of turine first stage in kJ/kg
printf('The values of enthalpy and specific volume are taken from the mollier chart at inlet and exit conditions respectively')
h0=3370//Enthalpy at beginning of first stage in kJ/kg
h2=h0-dh02//Enthalpy at the end of first stage in kJ/kg
h2s=h0-dh02s//Isentropic enthalpy at the end of first stage in kJ/kg
v2=0.041//Specific volume at the end of first stage in m^3/kg
dh24=2*U^2*10^-3//Change in enthalpy in second stage of turbine in kJ/kg
dh24s=dh24/ns2//Change in enthalpy isentropically of turine second stage in kJ/kg
h4=h2-dh24//Enthalpy at beginning of second stage in kJ/kg
h4s=h2-dh24s//Isentropic enthalpy at the end of second stage in kJ/kg
v4=0.05//Specific volume at the end of second stage in m^3/kg

Ca=C1*cosd(a1)//Axial velocity in m/s
h1r=(m*v2)/(3.1415*D*Ca)//Blade height at first stage rotor exit in m
h2r=(m*v4)/(3.1415*D*Ca)//Blade height at second stage rotor exit in m

//output
printf('\n\n(a)rotor blade angles\n    Inlet angle of the rotor blade is %3.2f degree\n    Outlet angle of the rotor blade is %3.2f degree\n    Inlet angle of the rotor blade in second stage is %3.2f degres\n    Outlet angle of the rotor blade in second stage is %3.2f degree\n(b)Total work done or Power developed in both the stages is %3.2f MW\n(c)final state of steam\n    Enthalpy at beginning of first stage is %3i kJ/kg\n    Enthalpy at the end of first stage is %3.2f kJ/kg\n    Isentropic enthalpy at the end of first stage is %3.2f kJ/kg\n    Specific volume at the end of first stage is %3.3f m^3/kg\n    Enthalpy at beginning of second stage is %3.1f kJ/kg\n    Isentropic enthalpy at the end of second stage is %3.2f kJ/kg\n    Specific volume at the end of second stage is %3.2f m^3/kg\n(d)blade height\n    Blade height at first stage rotor exit is %3.4f m\n    Blade height at second stage rotor exit is %3.4f m',b11,b21,b12,b22,W,h0,h2,h2s,v2,h4,h4s,v4,h1r,h2r)

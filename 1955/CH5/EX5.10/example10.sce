clc
clear
//input data
R=0.5//Degree of reaction
P0=2.2//Inlet pressure in bar
T0=443//Inlet temperature in K
N=2400//Rotor running speed in rpm
Dm=0.5//Rotor mean diameter in m
a1=36//Rotor inlet angle in degree
a2=19//Stator exit angle in degree
ns=0.88//Stage efficiency
m=1//Mass flow rate of steam in kg/s

//calculations
b2=a1//Outlet angle of the rotor blade in degree
b1=a2//Inlet angle of the rotor blade in degree
U=(3.1415*Dm*N)/60//Mean blade speed in m/s
Ca=(2*U*R)/(tand(b2)-tand(b1))//Axial velocity in m/s
W=m*U*Ca*(tand(a1)+tand(a2))*10^-3//Power output in kW
dh=W/ns//Stage enthalpy drop in kJ/kg

//output
printf('(a)Power output is %3.2f kW\n(b)Stage enthalpy drop is %3.2f kJ/kg',W,dh)

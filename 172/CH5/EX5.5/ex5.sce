//example 5
//calculating heat transfer for the given process
clear
clc
Vliq=0.05 //volume of saturated liquid in m^3
vf=0.001043 //in m^3/kg
Vvap=4.95 //volume of saturated water vapour in m^3
vg=1.6940 //in m^3/kg
m1liq=Vliq/vf //mass of liquid in kg
m1vap=Vvap/vg //mass of vapors in kg
u1liq=417.36 //specific internal energy of liquid in kJ/kg
u1vap=2506.1 //specific internal energy of vapors in kJ/kg
U1=m1liq*u1liq+m1vap*u1vap //total internal energy in kJ
m=m1liq+m1vap //total mass in kg
V=5 //total volume in m^3
v2=V/m //final specific volume in m^3/kg
disp('by interplotation we find that for steam, if vg=0.09831 m^3/kg then pressure is 2.03 MPa')
u2=2600.5 //specific internal energy at final state in kJ/kg
U2=m*u2 //internal energy at final state in kJ
Q=U2-U1 //heat transfer for the process in kJ
printf("\n hence,heat transfer for the process is Q = %.0f kJ. \n",Q)
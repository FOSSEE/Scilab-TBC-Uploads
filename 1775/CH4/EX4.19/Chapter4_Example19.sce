//Chapter-4, Illustration 19, Page 208
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
b1=30;//Blade angle at inlet in first stage in degrees
b2=30;//Blade angle at exit in first stage in degrees
b3=30;//Blade angle at inlet in second stage in degrees
b4=30;//Blade angle at exit in second stage in degrees
t1=240;//Temperature at entry in oC
P1=11.5;//Pressure at entry in bar
P2=5;//Pressure in wheel chamber in bar
vl=10;//Loss in velocity in percent
h=155;//Enthalpy at P2 in kJ/kg
W4=17.3;//Relative velocity at exit from the velocity triangle for second stage in m/s
a4=90;//Nozzle angle in second stage in degrees
C3=33;//Steam velocity at inlet from the velocity triangle for second stage in m/s
W2=49;//Relative velocity at outlet from the velocity triangle for first stage in m/s
x=15;//Length of AB assumed for drawing velocity triangle in mm
y=67;//Length of BC from the velocity triangle in mm

//CALCULATIONS
C1=sqrt(2000*h);//Velocity of steam in m/s
W3=W4/0.9;//Relative velocity at inlet for second stage in m/s
C2=C3/0.9;//Velocity in m/s
W1=W2/0.9;//Relative velocity at inlet for first stage in m/s
C1n=C1/y;//Velocity of steam in m/s
U=x*C1n;//Blade speed in m/s
a3=17;//Nozzle angle in second stage from the velocity triangle in degrees
a2=43;//Nozzle angle from the velocity triangle in degrees
DW1=731.5;//Change in relative velocity from the velocity triangle for first stage in m/s
DW2=257.5;//Change in relative velocity from the velocity triangle for second stage in m/s
ndia=((2*U*(DW1+DW2))/(C1^2))*100;//Diagram efficiency

//OUTPUT
mprintf('Blade speed is %3.1f m/s \n Blade tip angles of the fixed blade are %3.0f degrees and %3.0f degrees \n Diagram efficiency is %3.1f percent',U,a3,a2,ndia)







//==============================END OF PROGRAM=================================

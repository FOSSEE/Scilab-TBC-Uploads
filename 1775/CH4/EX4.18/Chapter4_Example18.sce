//Chapter-4, Illustration 18, Page 207
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
U=150;//Blade speed in m/s
m=3;//Mass flow rate of steam in kg/s
P=10.5;//Pressure in bar
r=0.21;//Ratio blade velocity to steam velocity
a1=16;//Nozzle angle in first stage in degrees
b2=20;//Blade angle at exit in first stage in degrees
a3=24;//Nozzle angle in second stage in degrees
b4=32;//Blade angle at exit in second stage in degrees
Wr=0.79;//Blade friction factor for first stage
Wr2=0.88;//Blade friction factor for second stage
Cr=0.83;//Blade velocity coefficient
W1=570;//Relative velocity at inlet from the velocity triangle for first stage in m/s
C2=375;//Velocity in m/s
W3=185;//Relative velocity at inlet from the velocity triangle for second stage in m/s

//CALCULATIONS
C1=U/r;//Steam speed at exit in m/s
W2=Wr*W1;//Relative velocity at outlet for first stage in m/s
C3=Cr*C2;//Steam velocity at inlet for second stage in m/s
W4=Wr2*W3;//Relative velocity at exit for second stage in m/s
DW1=W1+W2;//Change in relative velocity for first stage in m/s
DW2=275;//Change in relative velocity from the velocity triangle for second stage in m/s
ndia=((2*U*(DW1+DW2))/(C1^2))*100;//Diagram efficiency

//OUTPUT
mprintf('Diagram efficiency is %3.1f percent',ndia)




//==============================END OF PROGRAM=================================

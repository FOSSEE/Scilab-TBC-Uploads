//Chapter-4, Illustration 20, Page 210
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
C1=600;//Steam velocity in m/s
b1=30;//Blade angle at inlet in first stage in degrees
b2=30;//Blade angle at exit in first stage in degrees
b3=30;//Blade angle at inlet in second stage in degrees
b4=30;//Blade angle at exit in second stage in degrees
a4=90;//Nozzle angle in second stage in degrees
m=3;//Mass of steam in kg/s
x=15;//Length for drawing velocity triangle in mm
y=56;//Length of BC from the velocity triangle in mm

//CALCUALTIONS
C1n=C1/y;//Velocity of steam in m/s
U=x*C1n;//Blade speed in m/s
l=103;//Length from velocity triangle in mm
P=(m*l*C1n*U)/1000;//Power developed in kW

//OUTPUT
mprintf('Blade speed is %3.1f m/s \n Power developed by the turbine is %3.2f kW',U,P)






//==============================END OF PROGRAM=================================

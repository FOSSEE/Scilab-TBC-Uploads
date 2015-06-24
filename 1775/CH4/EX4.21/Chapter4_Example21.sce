//Chapter-4, Illustration 21, Page 211
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
N=400;//Speed in rpm
m=8.33;//Mass of steam in kg/s
P=1.6;//Pressure of steam in bar
x=0.9;//Dryness fraction
W=10;//Stage power in kW
r=0.75;//Ratio of axial flow velocity to blade velocity
a1=20;//Nozzle angle at inlet in degrees
a2=35;//Nozzle angle at exit in degrees
b1=a2;//Blade tip angle at exit in degrees
b2=a1;//Blade tip angle at inlet in degrees
a=25;//Length of AB from velocity triangle in mm
vg=1.091;//Specific volume of steam from steam tables in (m^3)/kg

//CALCULATIONS
Cx=73.5;//Change in whirl velocity from the velocity triangle by measurement in mm
y=Cx/a;//Ratio of change in whirl velocity to blade speed
U=sqrt((W*1000)/(m*y));//Blade speed in m/s
D=((U*60)/(3.147*N))*1000;//Mean diameter of drum in mm
v=m*x*vg;//Volume flow rate of steam in (m^3)/s

//OUTPUT
mprintf('Mean diameter of drum is %3.0f mm \n Volume of steam flowing per second is %3.2f m^3/s',D,v)










//==============================END OF PROGRAM=================================

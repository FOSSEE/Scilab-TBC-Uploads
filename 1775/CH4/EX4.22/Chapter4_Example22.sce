//Chapter-4, Illustration 22, Page 212
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
N=300;//Speed in rpm
m=4.28;//Mass of steam in kg/s
P=1.9;//Pressure of steam in bar
x=0.93;//Dryness fraction
W=3.5;//Stage power in kW
r=0.72;//Ratio of axial flow velocity to blade velocity
a1=20;//Nozzle angle at inlet in degrees
b2=a1;//Blade tip angle at inlet in degrees
l=0.08;//Tip leakage steam
vg=0.929;//Specific volume of steam from steam tables in (m^3)/kg

//CALCULATIONS
mact=m-(m*l);//Actual mass of steam in kg/s
a=(3.147*N)/60;//Ratio of blade velocity to mean dia
b=r*a;//Ratio of axial velocity to mean dia
c=46;//Ratio of change in whirl velocity to mean dia
D=sqrt((W*1000)/(mact*c*a));//Mean dia in m
Ca=b*D;//Axial velocity in m/s
h=((mact*x*vg)/(3.147*D*Ca))*1000;//Blade height in mm
D1=D-(h/1000);//Drum dia in m

//OUTPUT
mprintf('Drum diameter is %3.3f m \n Blade height is %3.0f mm',D1,h)









//==============================END OF PROGRAM=================================

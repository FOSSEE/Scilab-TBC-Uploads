//Chapter-4, Illustration 13, Page 202
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
C1=1000;//Steam velocity in m/s
a1=20;//Nozzle angle in degrees
U=400;//Mean blade speed in m/s
m=0.75;//Mass flow rate of steam in kg/s
b1=33;//Blade angle at inlet from the velocity triangle in degrees
b2=b1;//Blade angle at exit from the velocity triangle in degrees
Cx=1120;//Change in whirl velocity from the velocity triangle in m/s
Ca=0;//Change in axial velocity from the velocity triangle in m/s

//CALCULATIONS
Fx=m*Cx;//Tangential force on blades in N
Fy=m*Ca;//Axial thrust in N
W=(m*Cx*U)/1000;//Diagram power in kW
ndia=((2*U*Cx)/(C1^2))*100;//Diagram efficiency

//OUTPUT
mprintf('Blade angles are %3.0f degrees,%3.0f degrees \n Tangential force on blades is %3.0f N \n Axial thrust is %3.0f \n Diagram power is %3.0f kW \n Diagram efficiency %3.1f percent',b1,b2,Fx,Fy,W,ndia)





//==============================END OF PROGRAM=================================

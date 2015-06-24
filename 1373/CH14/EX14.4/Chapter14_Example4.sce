//Chapter-14, Example 14.4, Page 583
//=============================================================================
clc
clear

//INPUT DATA
T=27;//Temperature of swimming pool in degree C
h=0.4;//Relative humidity
v=2;//Speed of wind in m/s
v1=(15.89*10^-6);//Kinematic viscosity in m^2/s
p=0.0436;//Density in kg/m^3
DAB=(0.26*10^-4)//DAB value in m^2/s
L=15;//Length in m


//CALCULATIONS
Sc=(v1/DAB);//Schmidt number
Re=(v*L)/v1;//Reynolds number
ShL=(((0.037*Re^(4/5))-870)*Sc^(1/3));//Equivalent Schmidt number
h1=(ShL*(DAB/L))/10^-3;//Mass transfer coefficient for evaporation in mm/s

//OUTPUT
mprintf('Mass transfer coefficient for evaporation is %3.1f*10^-3 m/s',h1)

//=================================END OF PROGRAM==============================

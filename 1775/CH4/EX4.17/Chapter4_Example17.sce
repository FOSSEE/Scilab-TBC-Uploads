//Chapter-4, Illustration 17, Page 206
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
m=2;//Mass flow rate of steam in kg/s
W=130;//Turbine power in kW
U=175;//Blade velocity in m/s
C1=400;//Steam velocity in m/s
Wr=0.9;//Blade friction factor
W1=240;//Realtive velocity at inlet from the velocity triangle in m/s

//CALCULATIONS
Cx1=(W*1000)/(m*U);//Whirl velocity at inlet in m/s
W2=Wr*W1;//Realtive velocity at outlet from the velocity triangle in m/s
a1=19;//Nozzle angle from the velocity triangle in degrees
b1=33;//Blade angle at inlet from the velocity triangle in degrees
b2=36;//Blade angle at outlet from the velocity triangle in degrees

//OUTPUT
mprintf('Nozzle angle is %3.0f degrees \n Blade angles are %3.0f degrees,%3.0f degrees',a1,b1,b2)





//==============================END OF PROGRAM=================================

//Chapter-4, Illustration 15, Page 204
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
m=3;//Mass flow rate of steam in kg/s
C1=425;//Steam velocity in m/s
r=0.4;//Ratio of blade speed to jet speed
W=170;//Stage output in kW
IL=15;//Internal losses in kW
a1=16;//Nozzle angle in degrees
b2=17;//Blade angle at exit in degrees
W1=265;//Relative velocity at inlet from the velocity triangle in m/s
W2=130;//Relative velocity at outlet from the velocity triangle in m/s

//CALCULATIONS
U=C1*r;//Blade speed in m/s
P=(W+IL)*1000;//Total power developed in W
Cx=P/(m*W);//Change in whirl velocity in m/s
ndia=((2*U*Cx)/(C1^2))*100;//Blading efficiency
Wr=W2/W1;//Blade velocity co-efficient

//OUTPUT
mprintf('Blading efficiency is %3.1f percent \n Blade velocity co-efficient is %3.2f',ndia,Wr)




//==============================END OF PROGRAM=================================

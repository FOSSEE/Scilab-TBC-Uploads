//Chapter-7, Example 7.15, Page 310
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Diameter of pipeline in m
//velocity profile is given by u=96r-190r^2 m/s
//Temperature profile is given by T=100(1-2r) degree C

//CALCULATIONS
vmax=(64*(D/2))-(95*(D/2)^2);//Mean velocity in m/s
T=(2/(vmax*(D/2)^2))*(((9600*(D/2)^3)/3)-((38200*(D/2)^4)/4)+((38000*(D/2)^5)/5));//Average temperature of the fluid in degree C

//OUTPUT
mprintf('Average temperature of the fluid is %3.2f degree C',T)

//=================================END OF PROGRAM==============================

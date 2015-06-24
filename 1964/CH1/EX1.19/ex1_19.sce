//Chapter-1, Example 1.19, Page 28
//=============================================================================
clc;
clear;
//INPUT DATA
l1=0.5;//length of copper rod in m
a=0.00426;//temperature coefficient of copper measured in per degree centigrade
R1=4.25*10^-4;//resistance of wire at 15 degree centigrade in ohm
d1=5*10^-3;//diameter of copper rod in m in case 1
r1=0.5*d1;//radius of copper rod in m in case 1
a1=%pi*((r1)^2);//area of cross-section in m^2 in case 1
t1=15;//temperature in degree centigrade
t2=50;//temperature in degree centigrade
//CALCULATIONS 
p=R1*a1/l1;//resistivity in ohm-m
d2=1*10^-3;//diameter of copper rod in m in case 2
r2=d2/2;//radius of copper rod in m in case 2
a2=%pi*(r2)^2;//area of cross-section in m^2 in case 2
R15=(a1/a2)^2*R1;//resistance at 15 degree centigrade
R50=R15*((1+(a*t2))/(1+(a*t1)));
//OUTPUT
mprintf("Thus the resistance of wire at 50 degree centigrade is %1.4f ohm",R50);
 

//=================================END OF PROGRAM==============================

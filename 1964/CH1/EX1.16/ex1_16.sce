//Chapter-1, Example 1.16, Page 27
//=============================================================================
clc;
clear;
//INPUT DATA
I=7.9;//current in A
V=240;//supply voltage in V
t=55;//temperature in degree centigrade
a0=0.00029;//temperature coefficient in ohm/ohm/degree centigrade
l=15.6;//length of wire in m
a=12;//cross-sectional area in mm^2
//CALCULATIONS 
R=V/I;//resistance of wire in ohm
p=R*a/l;//resistivity of wire in ohm metre
Rt=R*(1+(a0*t));//resistance at 55 degree centigrade in ohm
I1=V/Rt;//current through wire at temperature 55 degree centigrade in A
//OUTPUT
mprintf("Thus the resistivity and current through wire at temperature 55 degree centigrade are %2.2f micro ohm meter and %2.2f A respectively",p,I1);
 

//=================================END OF PROGRAM==============================

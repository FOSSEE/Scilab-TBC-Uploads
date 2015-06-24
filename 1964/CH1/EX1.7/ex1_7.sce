//Chapter-1, Example 1.7, Page 22
//=============================================================================
clc;
clear;
//INPUT DATA
t1=20;//temperature in degree centigrade
R1=45;//shunt motor resistance at t1
R2=48.5;//new shunt resistance at t2
a0=0.004;//temperature coefficient of resistance at 0 degree centigrade
//CALCULATIONS
x=R1/R2;
t2=((1+(a0*t1)-x)/(a0*x));
//OUTPUT
mprintf("Thus the temperature for new resistance is %d degree centigrade \n",t2);

//=================================END OF PROGRAM==============================

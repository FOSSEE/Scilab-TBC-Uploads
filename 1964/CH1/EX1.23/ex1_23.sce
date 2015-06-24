//Chapter-1, Example 1.23, Page 30
//=============================================================================
clc;
clear;
//INPUT DATA
R20=18;//resistance of coil at 20 degree centigrade in ohms
R50=20;//resistance of coil at 50 degree centigrade in ohms
Rt=21;//resistance of coil at t degree centigrade in ohms
t1=20;//temperature in degree centigrade
t2=50;//temperature in degree centigrade
t3=15;//temperature in degree centigrade
a=R50/R20;
//CALCULATIONS 
a0=(a-1)/(50-(20*a));//temperature coefficient of coil at 0 degree centigrade
x=(Rt/R50);
t=(x)*(1+(a0*t2));
t=t-1;
t=(t)*(1/a0);////temperature of coil when Rt=21 ohms measured in degree centigrade
deltat=t-t3;//mean temperature rise
//OUTPUT
mprintf("Thus the mean temperature rise is %2.0f degree centigrade",deltat);
 

//=================================END OF PROGRAM==============================


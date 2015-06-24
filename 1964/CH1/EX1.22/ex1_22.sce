//Chapter-1, Example 1.22, Page 29
//=============================================================================
clc;
clear;
//INPUT DATA
R20=100;//resistance of coil at 20 degree centigrade in ohms
R45=110;//resistance of coil at 45 degree centigrade in ohms
Rt=124;//resistance of coil at t degree centigrade in ohms
t1=20;//temperature in degree centigrade
t2=15;//temperature in degree centigrade
a=R45/R20;
//CALCULATIONS 
a0=(a-1)/(45-(20*a));//temperature coefficient of coil at 0 degree centigrade
x=(Rt/R20);
t=(x)*(1+(a0*t1));
t=t-1;
t=(t)*(1/a0);////temperature of coil when Rt=124 ohms measured in degree centigrade
deltat=t-t2;//mean temperature rise
//OUTPUT
mprintf("Thus the mean temperature rise is %2.0f degree centigrade",deltat);
 

//=================================END OF PROGRAM==============================

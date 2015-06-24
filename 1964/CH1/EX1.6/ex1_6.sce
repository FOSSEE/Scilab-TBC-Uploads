//Chapter-1, Example 1.6, Page 21
//=============================================================================
clc;
clear;
//INPUT DATA
t1=12;//temperature in degree centigrade
t2=50;//temperature in degree centigrade
R1=0.4;//copper coil resistance in ohms
a0=0.004;//temperature coefficient of copper at zero degree centigrade
//CALCULATIONS
a12=1/((1/a0)+t1);//temperature coefficient at 12 degree centigrade
R2=R1*[1+(a12*(t2-t1))];//resistance of copper wire  in ohm at 52 degree centigrade
//OUTPUT
mprintf("Thus the resistance copper wire at 52 degree centigrade is %1.2f  ohm \n",R2);

//=================================END OF PROGRAM==============================

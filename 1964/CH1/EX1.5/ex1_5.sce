//Chapter-1, Example 1.5, Page 21
//=============================================================================
clc;
clear;
//INPUT DATA
t1=40;//temperature in degree centigrade 
t2=100;//temperature in degree centigrade
R1=3.146;//resistance of platinum coli at t1
R2=3.767;//resistance of platinum coli at t2
//CALCULATIONS
x=R1/R2;
a0=((R1-R2)/(R2*t1-R1*t2));//temperature coefficient at 0 degree centigrade
R0=R1/(1+(a0*t1));//resistance at zero degree centigrade
a40=a0/(1+(a0*t1));//temperature coefficient at 40 degree centigrade
//OUTPUT
mprintf("Thus the temperature coefficient at 0 degree centigrade,resistance at zero degree centigrade,temperature coefficient at 40 degree centigrade are %f /degree centigrade ,%f ohms,%f /degree centigrade respectively \n",a0,R0,a40);


//=================================END OF PROGRAM==============================

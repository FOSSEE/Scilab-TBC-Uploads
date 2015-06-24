//Chapter-1, Example 1.8, Page 22
//=============================================================================
clc;
clear;
//INPUT DATA
V=180;//supply voltage in volts
I1=4;//initial current of coil in A
t1=20;//initial temperature
I2=3.4;//new decreased current of coil in A at temperature t2
a0=0.0043;//temperature coefficient in per degree centigrade
//CALCULATIONS
R1=V/I1;//initial resistance of coil in ohms
R2=V/I2;//resistance of coil after some time in ohms
x=R1/R2;
t2=(1+(a0*t1)-x)/(a0*x);
t=t2-t1;//temperature rise
//OUTPUT
mprintf("Thus the temperature rise is %2.2f degree centigrade \n",t);

//=================================END OF PROGRAM==============================

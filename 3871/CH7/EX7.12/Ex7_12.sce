//===========================================================================
//chapter 7 example 12
clc;clear all;

//variable declaration
V1	= 6600;		//primary voltage in V
V2	= 110;		//secondary voltage in V
I1	= 50;		//primary current in A
I2	= 5;		//secondary voltage in A

//calculations
r	= V1/V2;		//hence transformation ratio of PT 
r1	= I1/I2;		//transformation ratio of CT

//result
mprintf("transformation ratio of CT = %3.2f ",r1);


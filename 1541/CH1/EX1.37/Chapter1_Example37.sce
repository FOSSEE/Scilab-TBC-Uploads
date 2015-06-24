//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
V=500;//Terminal voltage in V dc
I=30;//Line current in A
N1=600;//Initial speed in rpm
N2=500;//Required speed in rpm
R=0.5;//Total resistance in ohm

//CALCULATIONS
Eb1=(V-(I*R));//Back emf in V
Ka=(Eb1*60)/(I*N1);//Proportionality constant
T1=(Ka*I^2)/(2*3.14);//Torque developed at speed 600 rpm
T2=(T1*(N2/N1)^2);//Torque developed at speed 500 rpm
I2=sqrt((2*3.14*T2)/Ka);//New lin ecurrent in A
Eb2=(Ka*I2*N2)/60;//New back emf in V
R1=(V-Eb2)/I2;//Required series resistance in ohm

//OUTPUT
mprintf('Series resistance to be added to armature field circuit is %3.1f ohm',R1)

//=================================END OF PROGRAM==============================

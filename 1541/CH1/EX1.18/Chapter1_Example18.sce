//Chapter-1, Example 1.18, Page 1.43
//=============================================================================
clc
clear

//INPUT DATA
N=(1800/60);//Speed of the motor in rps
V=200;//Terminal voltage in V
Nl=(900/60);//Lathe speed in rps
F=300;//Force exerted in N
r=0.2;//Radius of the shaft in m
n=0.9;//Efficiency of the motor
Dp=0.3;//Diamter of the Lathe pulley in m

//CALCULATIONS
Tsh=(F*r);//Shaft torque in N.m
Psh=(Tsh*2*3.14*Nl);//Shaft power in W
Pi=(Psh/n);//Input power in W
I=(Pi/V);//Current taken by the motor in A
Dm=((Nl*Dp)/N)*100;//Diameter of the motor pulley in cm

//OUTPUT
mprintf('Current taken by the motor is %3.1f A \nDiameter of the motor pulley is %3.0f cm',I,Dm)

//=================================END OF PROGRAM==============================

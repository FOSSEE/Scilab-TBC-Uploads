//Chapter-3, Example 3.5, Page 3.13
//=============================================================================
clc
clear

//INPUT DATA
P=6;//Number of poles
f=50;//Supply frequency in Hz
Tm=120;//Shaft torque in N.m
f1=2;//Rotor current frequency in Hz
L=5;//Amount of constant losses in N.m
C=500;//Amount of core losses in W

//CALCULATIONS
Ns=(120*f)/P;//Synchronous speed in rpm
s=(f1/f);//Slip of the motor 
N=(1-s)*Ns;//Actual speed in rpm
P=(2*3.14*N*Tm)/60;//Shaft power in W
Pm=(2*3.14*N*(Tm+L))/60000;//Mechanical power output in kW
R=(s*Pm)/(1-s);//Rotor copper losses in kW
I=(Pm+R+(L/10));//Motor input in kW
n=(Pm/I)*100;//Machine efficiency

//OUTPUT
mprintf('a)Mechanical power output is %3.3f kW\nb)Rotor copper losses is %3.2fkW\nc)Motor input is %3.3f kW\nd)Machine efficiency is %3.1f percent',Pm,R,I,n)

//=================================END OF PROGRAM==============================

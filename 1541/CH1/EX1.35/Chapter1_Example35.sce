//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
N1=1500;//Initial speed in rpm
V1=270;//Terminal voltage in V
T=300;//Full load torque in N.m
N2=1200;//New speed in rpm
V2=(2*V1);//New terminal voltage in V
Ra=0.31;//Armature resistance in ohm

//CALCULATIONS
Ia=(T*2*3.14*N1)/(V1*60);//Full load current in A
Eb=(V1*(N2/N1));//Back emf in V
Pm=(Eb*Ia)/1000;//Mechanical power developed in kW
Eb2=(V2-(Ia*Ra));//Back emf at new terminal volatge in V
N=(Eb2*Ia*60)/(2*3.14*T);//New speed in rpm
Pm2=(Eb2*Ia/1000);//Mechanical power in kW

//OUTPUT
mprintf('i)Full load current is %3.1f A, Full load power is %3.1f kW, Armature resistance is %3.2f ohm\nii)New motor torque is %3.0f N.m, Motor power is %3.1f kW, Motor speed is %3.0f rpm',Ia,Pm,Ra,T,Pm2,N)

//=================================END OF PROGRAM==============================

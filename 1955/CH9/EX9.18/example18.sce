clc
clear
//input data
N=50//Speed of the turbine in rpm
d=6//Runner diameter of the turbine in m
Ae=20//Effective area of flow in m^2
b11=150//The angle of the runner blades at inlet in degree
b22=20//The angle of the runner blade at outlet in degree
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
U1=(3.141*d*N)/60//Runner tip speed at inlet in m/s
U2=U1//Runner tip speed at outlet in m/s
Cr2=U2*tand(b22)//Flow velocity at outlet in m/s
Cr1=Cr2//Flow velocity at inlet in m/s
Q=Ae*Cr1//Discharge by the  turbine in m^3/s
Cx1=U1-(Cr1/(tand(180-b11)))//Velocity of whirl at inlet in m/s
P=dw*g*Q*(U1*Cx1/g)*10^-3//Theoretical Power developed in kW
C2=Cr2//Absolute outlet velocity in m/s
H=(U1*Cx1/g)+(C2^2/(2*g))//Net head across the turbine in m
nH=(U1*Cx1/g)/(H)//Hydraulic efficiency

//output
printf('(a)Discharge of the turbine is %3.1f m^3/s\n(b)Theoretical Power developed is %3.2f kW\n(c)Hydraulic efficiency is %3.4f',Q,P,nH)

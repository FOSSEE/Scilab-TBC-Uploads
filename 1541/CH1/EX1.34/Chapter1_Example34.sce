//Chapter-1, Example 1.21, Page 1.49
//=============================================================================
clc
clear

//INPUT DATA
Pi=8800;//Input power in W
Ra=0.5;//Armature resistance in ohm
No=1260;//Speed of the motor at no load in rpm
V=240;//Line voltage in V
Pm=18800;//Gross mechanical power in W
V=240;//treminal voltage in V

//CALCULATIONS
K=(V/No);//Constant of proportionality 
Eb1=(240-sqrt((V^2)-(4*(Pi/2))))/2;//Back emf in V
Eb2=(240+sqrt((V^2)-(4*(Pi/2))))/2;//Back emf in V
I=(Pi/V);//Rated current in A
Ia=(V-Eb1)/Ra;//Armature current in A
Nn=(Eb2/K);//New speed in rpm
Ia2=(V-Eb2)/Ra;//Armature current in A
T=(60*Pi)/(2*3.14*Nn);//Torque developed in N.m
K2=(T/Ia2);//New constant
//TN=(0.5*10^-4)Nn^2
Nnn1=(-((K2*K)/Ra)+sqrt((((K2*K)/Ra))^2+(4*(0.5*10^-4)*((V*K2)/Ra))))/(2*0.5*10^-4);//New speed in rpm

//OUTPUT
mprintf('Armature current is %3.0f A \n Torque developed is %3.2f N.m \n New speed of the motor is %3.0f rpm',Ia2,T,Nnn1)

//=================================END OF PROGRAM==============================

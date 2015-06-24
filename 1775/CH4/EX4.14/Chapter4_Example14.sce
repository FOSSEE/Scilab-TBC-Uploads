//Chapter-4, Illustration 14, Page 203
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
D=2.5;//Mean diameter of blade ring in m
N=3000;//Speed in rpm
a1=20;//Nozzle angle in degrees
r=0.4;//Ratio blade velocity to steam velocity
Wr=0.8;//Blade friction factor
m=10;//Steam flow in kg/s
x=3;//Sum in blade angles in degrees
b1=32.5;//Blade angle at inlet from the velocity triangle in degrees
W1=626.7;//Relative velocity at inlet from the velocity triangle in m/s
Cx=967;//Change in whirl velocity from the velocity triangle in m/s

//CALCULATIONS
U=(3.147*D*N)/60;//Blade velocity in m/s
C1=U/r;//Steam velocity in m/s
b2=b1-x;//Blade angle at exit in degrees
W2=Wr*W1;//Relative velocity at outlet from the velocity triangle in m/s
W=(m*Cx*U)/1000;//Power developed in kW
ndia=((2*U*Cx)/(C1^2))*100;//Blade efficiency
sc=(m*3600)/W;//Steam consumption in kg/kWh

//OUTPUT
mprintf('Power developed is %3.0f kW \n Blade efficiency is %3.1f percent \n Steam consumed is %3.2f kg/kWh',W,ndia,sc)




//==============================END OF PROGRAM=================================

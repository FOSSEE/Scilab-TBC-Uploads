//Chapter-4, Illustration 5, Page 136
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//INPUT DATA
C=600;//Distance between shafts in mm
Cp=30;//Circular pitch in mm
NA=200;//Speed of wheel A in rpm
NB=600;//Speed of wheel B in rpm
F=18;//Tangential pressure in kN
pi=3.141

//CALCULATIONS
a=Cp/(pi*10);//Ratio of pitch diameter of wheel A to teeth of wheel A in cm
b=Cp/(pi*10);//Ratio of pitch diameter of wheel B to teeth of wheel B in cm
T=(2*C)/(a*10);//Sum of teeth of wheels
r=NB/NA;//Ratio of teeth of wheels
TB=T/(r+1);//Teeth of wheel B
TB1=ceil(TB);//Teeth of wheel B
TA=TB1*r;//Teeth of wheel A
DA=a*TA;//Pitch diameter of wheel A in cm
DB=b*TB1;//Pitch diameter of wheel B in cm
CPA=(pi*DA)/TA;//Circular pitch of gear A in cm
CPB=(pi*DB)/TB1;//Circular pitch of gear B in cm
C1=(DA+DB)*10/2;//Exact centre distance in mm
P=(F*1000*pi*DA*NA)/(60*1000*100);//Power transmitted in kW

//OUTPUT
mprintf('Number of teeth on wheel A is %3.0f \n Number of teeth on wheel B is %3.0f \n Pitch diameter of wheel A is %3.2f cm \n Pitch diameter of wheel B is %3.3f cm \n Circular pitch of wheel A is %3.4f cm \n Circular pitch of wheel B is %3.4f cm \n Exact centre distance between shafts is %3.2f mm \n Power transmitted is %3.3f kW',TA,TB1,DA,DB,CPA,CPB,C1,P)








//================================END OF PROGRAM=============================================

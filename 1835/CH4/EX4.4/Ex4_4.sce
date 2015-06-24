//Chapter-4, Illustration 4, Page 135
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//INPUT DATA
x=3.5;//Ratio of teeth of wheels
C=1.2;//Centre distance between axes in m
DP=4.4;//Diametrical pitch in cm

//CALCULATIONS
D=2*C*100;//Sum of diameters of wheels in cm
T=D*DP;//Sum of teeth of wheels
TB1=T/(x+1);//Teeth of wheel B
TB=floor(TB1);//Teeth of whhel B
TA=x*TB;//Teeth of wheel A
DA=TA/DP;//Diametral pitch of gear A in cm
DB=TB/DP;//Diametral pitch of gear B in cm
Ce=(DA+DB)/2;//Exact centre distance between shafts in cm
TB2=ceil(TB1);//Teeth of wheel B
TA2=T-TB2;//Teeth of wheel A
VR=TA2/TB2;//Velocity ratio

//OUTPUT
mprintf('Number of teeth on wheel A is %3.0f \n Number of teeth on wheel B is %3.0f \n Exact centre distance is %3.3f cm \n If centre distance is %3.1f m then \n Velocity ratio is %3.4f',TA,TB,Ce,C,VR)








//================================END OF PROGRAM=============================================

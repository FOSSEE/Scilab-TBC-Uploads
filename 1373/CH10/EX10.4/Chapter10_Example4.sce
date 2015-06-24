//Chapter-10, Example 10.4, Page 409
//=============================================================================
clc
clear

//INPUT DATA
S=1;//Side of a square in m
L=0.4;//Diatance between the plates in m
T1=900;//Temperature of one plate in degree C
T2=400;//Temperature of the other plate in degree C

//CALCULATIONS
R=(S/L);//Ratio of the side of the square to the distance between plates
F12=0.415;//From Fig.10.4 on page no.409
Q=(5.67*10^-8*S*S*F12*((T1+273)^4-(T2+273)^4))/1000;//The net heat transfer in kW

//OUTPUT
mprintf('The net exchange of energy due to radiation between the plates is %3.1f kW',Q)

//=================================END OF PROGRAM==============================

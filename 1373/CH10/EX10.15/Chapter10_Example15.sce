//Chapter-10, Example 10.15, Page 430
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Diameter of each disc in m
L=2;//Distance between the plates in m
T=[800+273,300+273];//Temperatures of the plates in K
e=[0.3,0.5];//Emissivities of plates

//CALCULATIONS
e1=(e(1)*e(2));//Equivalent emissivity
R=(D/L);//Ratio between diameter and distance between the plates
F=0.014;//F value from Fig.10.4 from page no. 409
Q=(e1*(3.14/4)*D^2*F*5.67*10^-8*((T(1)^4-(T(2)^4))));//Radiant heat exchange for the plates in W

//OUTPUT
mprintf('Radiant heat exchange for the plates is %3.2f W',Q)

//=================================END OF PROGRAM==============================

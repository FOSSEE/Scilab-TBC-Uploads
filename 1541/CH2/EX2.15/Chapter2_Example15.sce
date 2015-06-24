//Chapter-2, Example 2.15, Page 2.23
//=============================================================================
clc
clear

//INPUT DATA
V1=6000;//Primary volatge in V
V2=500;//Secondary voltage in V
Z2=complex(4,3)

//CALCULATIONS
K=(V2/V1);//Voltage transformation ratio
I2=(V2/Z2);//Secondary current in A
a1=sqrt((real(I2))^2+(imag(I2))^2);
a2=atand(imag(I2)/real(I2));
q=cosd(a2);//Phase angle in degree
P2=(V2*a1*q)/1000;//Power delivered in kW
I1=(K*a1);//Primary current in A

//OUTPUT
mprintf('Power delivered is %3.0f kW \nCurrent taken by an ideal transformer is %3.2f A',P2,I1)
 
//=================================END OF PROGRAM==============================

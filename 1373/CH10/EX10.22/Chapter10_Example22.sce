//Chapter-10, Example 10.22, Page 445
//=============================================================================
clc
clear

//INPUT DATA
D=1;//Dimension of the plate in m
L=0.5;//Distance between the plates in m
Ts=27+273;//Surface temperature of the walls in K
T=[900+273,400+273];//Temperature of the plates in K
e=[0.2,0.5];//Emissivities of the plates 

//CALCULATIONS
F12=0.415;//From Fig.10.4 on page no.409
F13=(1-F12);//Shape factor
F23=(1-F12);//Shape factor
R1=(1-e(1))/(e(1)*D*D);//Resistance for 1
R2=(1-e(2))/(e(2)*D*D);//Resistance for 2
R3=0;//Resistance for 3
A1F12I=(1/(D*D*F12));//Inverse of the product of area and Shape factor
A1F13I=(1/(D*D*F13));//Inverse of the product of area and Shape factor
A2F23I=(1/(D*D*F23));//Inverse of the product of area and Shape factor
Eb1=(5.67*10^-8*T(1)^4)/1000;//Emissive power of 1 in kW/m^2
Eb2=(5.67*10^-8*T(2)^4)/1000;//Emissive power of 2 in kW/m^2
Eb3=(5.67*10^-8*Ts^4);//Emissive power of 3 in W/m^2
J1=25;//Radiosity at node 1 in kW/m^2
J2=11.53;//Radiosity at node 2 in kW/m^2
J3=0.46;//Radiosity at node 3 in kW/m^2
Q1=((Eb1-J1)/R1);//Total heat loss by plate 1 in kW
Q2=((Eb2-J2)/R2);//Total heat loss by plate 2 in kW
Q3=((J1-J3)/(A1F13I))+((J2-J3)/(A2F23I));//Total heat received by the room in kW

//OUTPUT
mprintf('Total heat loss by plate 1 is %3.1f kW \nTotal heat loss by plate 2 is %3.1f kW \nTotal heat received by the room is %3.2f kW',Q1,Q2,Q3)

//=================================END OF PROGRAM==============================

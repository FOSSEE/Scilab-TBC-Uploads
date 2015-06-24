clear;
clc;
printf("\t\t\tProblem Number 3.17\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.17 (page no. 117) 
// Solution

p1=1000; //Unit:psia //Initial pressure
t1=100;  //Unit:Fahrenheit //Temperature at pressure p1
p2=1000; //Unit:psia //Final pressure
t2=1000; //Unit:Fahrenheit //Temperature at pressure p2
// feed in 10,000 LBm/hr 
h1=70.68  //Unit:Btu/LBm //Inlet enthalpy
h2=1505.9 //Unit:Btu/LBm //Outlet enthalpy

T1=t1+460; //Unit:R //Temperature at pressure p1
T2=t2+460; //Unit:R //Temperature at pressure p2
//Energy equation is given by
J=778; //J=Conversion factor

//Z1=Inlet position //Unit:m 
//V1=Inlet velocity //Unit:m/s
//Z2=Outlet position //Unit:m 
//V2=Outlet velocity Unit:m/s 
//u1=internal energy //energy in
//u2=internal energy //energy out
//h=enthalpy

//Energy equation is given by
//((Z1/J)*(g/gc)) + (V1^2/(2*gc*J)) + u1 + ((p1*v1)/J) + q = ((Z2/J)*(g/gc)) + (V2^2/(2*gc*J)) + u2 + ((p2*v2)/J) + w/J; //Unit:Btu/LBm

//we can consider this system as a single unit with feed water entering ans steam leaving. 
//It well designed,this unit will be thoroughly insulated,and heat losse will be reduced to a negligible amount
//Alos,no work will be added to the fluid during the time it is passing through the unit, and kinetic energy differences will be assumed to be negligibly small
//Differennces in elevation also be considered negligible
//So,the energy equation is reduced to 
//u1 + ((p1*v1)/J) + q = u2 + ((p2*v2)/J)
//Because h=u+(p*v/J)
q=h2-h1; //q=net heat losses //Unit:Btu/LBm
printf("Net heat losses is %f Btu/LBm \n",q);
printf("For 10000 LBm/hr,\n");
printf("%f Btu/hr energy has been added to the water to convert it to steam",q*10000)


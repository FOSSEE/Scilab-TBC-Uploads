clear;
clc;
printf("\t\t\tProblem Number 3.18\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.18  (page no. 119) 
// Solution

h1=1220  //Unit:Btu/LBm //Inlet enthalpy
h2=1100 //Unit:Btu/LBm //Outlet enthalpy

//Z1=Inlet position //Unit:m 
//V1=Inlet velocity //Unit:m/s
//Z2=Outlet position //Unit:m 
//V2=Outlet velocity Unit:m/s 
//u1=internal energy //energy in
//u2=internal energy //energy out
J=778; //J=Conversion factor
gc=32.174; //Unit: (LBm*ft)/(LBf*s^2) //gc is constant of proportionality

//Energy equation is given by
//((Z1/J)*(g/gc)) + (V1^2/(2*gc*J)) + u1 + ((p1*v1)/J) + q = ((Z2/J)*(g/gc)) + (V2^2/(2*gc*J)) + u2 + ((p2*v2)/J) + w/J; //Unit:Btu/LBm

//For this device,differences in elevation are negligible.No work is done on or by the fluid,friction is negligible
//And due to the speed of the fluid flowing and the short length of the nozzle,heat transfer to or from the surroundings is also negligible.
//So,the energy equation is reduced to 
//u1 + ((p1*v1)/J) +(V1^2/(2*gc*J)  = u2 + ((p2*v2)/J) + (V2^2/(2*gc*J)
// h1-h2 = ((V2^2-V1^2)/(2*gc*J))

printf("Solution for (a)\n");
//For neglegible entering velocity, V1=0
//So,
V2=sqrt((2*gc*J)*(h1-h2)); //the final velocity  //ft/s
printf("It the initial velocity of the system is negligible,the final velocity is %f ft/s \n \n",V2);

printf("Solution for (b)\n");
//If the initial velocity is appreciable,
V1=1000; //Unit:ft/s //the initial velocity 
V2=sqrt(((h1-h2)*(2*gc*J)) + V1^2 ) ;
printf("It the initial velocity of the system is appreciable,the final velocity is %f ft/s \n \n",V2);

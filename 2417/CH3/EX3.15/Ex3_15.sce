clear;
clc;
printf("\t\t\tProblem Number 3.15\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.15 (page no. 115) 
// Solution

p1=100; //Unit:psia //Initial pressure
t1=950; //Unit:Fahrenheit //Temperature at pressure p1
p2=76; //Unit:psia //Final pressure
t2=580; //Unit:Fahrenheit //Temperature at pressure p2
v1=4; //Unit:ft^3/LBm //Specific volume at inlet conditions
v2=3.86; //Unit:ft^3/LBm //Specific volume at outlet conditions
Cv=0.32; //Unit:Btu/(LBm*R) //Specific heat for constant volume process

T1=t1+460; //Unit:R //Temperature at pressure p1
T2=t2+460; //Unit:R //Temperature at pressure p2
J=778; //J=Conversion factor

//Z1=Inlet position //Unit:m 
//V1=Inlet velocity //Unit:m/s
//Z2=Outlet position //Unit:m 
//V2=Outlet velocity Unit:m/s 
//u1=internal energy //energy in
//u2=internal energy //energy out

//Energy equation is given by
//((Z1/J)*(g/gc)) + (V1^2/(2*gc*J)) + u1 + ((p1*v1)/J) + q = ((Z2/J)*(g/gc)) + (V2^2/(2*gc*J)) + u2 + ((p2*v2)/J) + w/J; //Unit:Btu/LBm
//Because pipe is horizontal and velocity terms are to be neglected, 
// Also no work crosses the boundaries of the system, the energy equation is reduced to
//u1 + ((p1*v1)/J) + q = u2 + ((p2*v2)/J)
//u2-u1=Cv*(T2-T1) //For a constant volume process //u2-u1=Chnage in internal energy
//So,
q=Cv*(T2-T1) + (p2*v2*144)/J - (p1*v1*144)/J;  //q=heat transfer //1 ft^2=144 in^2 //Unit:Btu/LBm
printf("%f Btu/LBm heat is transferred from the gas \n",q);

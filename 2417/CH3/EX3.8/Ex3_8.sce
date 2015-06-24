clear;
clc;
printf("\t\t\tProblem Number 3.8\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.8 (page no. 98) 
// Solution

m1=50000; //Unit:LBm/hr //An inlet steam flow
v1=0.831 //Unit:ft^3/LBm //Specific volume of inlet steam
d1=6  //Unit:in //Inlet diameter
A1=(%pi*d1^2)/(4*144) //1 ft^2=144 in^2 //Entering area
V1=(m1*v1)/(A1*60*60) //(60 min/hr * 60 s/min) //To convert hours into seconds //velocity at inlet
printf("The velocity at inlet is %f ft/s\n",V1);


m2=m1; //Unit:LBm/hr //m2=An outlet steam flow
v2=1.825 //Unit:ft^3/LBm //Specific volume of outlet steam
d2=8  //Unit:in //Outlet diameter
A2=(%pi*d2^2)/(4*144) //1 ft^2=144 in^2 //Exit area
V2=(m1*v2)/(A2*60*60) //(60 min/hr * 60 s/min) //To convert hours into seconds //velocity at outlet
printf("The velocity at outlet is %f ft/s",V2);

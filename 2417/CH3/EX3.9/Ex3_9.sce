clear;
clc;
printf("\t\t\tProblem Number 3.9\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.9 (page no. 99) 
// Solution

m1=10000; //Unit:kg/hr //An inlet steam flow
v1=0.05 //Unit:m^3/kg //Specific volume of inlet steam
d1=0.1  //Unit:m //Inlet diameter //100 mm =0.1 m
A1=(%pi/4)*d1^2 //Unit:m^2 //Entering area
V1=(m1*v1)/(A1*60*60) //(60 min/hr * 60 s/min) //To convert hours into seconds //velocity at inlet //Unit:m/s
printf("The velocity at inlet is %f m/s\n",V1);


m2=m1; //Unit:kg/hr //m2=An outlet steam flow
v2=0.10 //Unit:m^3/kg //Specific volume of outlet steam
d2=0.2  //Unit:m //Outlet diameter //200 mm = 0.2 m
A2=(%pi/4)*(d2^2) //Unit:m^2 //Exit area
V2=(m1*v2)/(A2*60*60) //(60 min/hr * 60 s/min) //To convert hours into seconds //velocity at outlet //Unit:m/s
printf("The velocity at outlet is %f m/s",V2);

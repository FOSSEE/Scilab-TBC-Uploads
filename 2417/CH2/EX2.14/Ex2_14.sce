clear;
clc;
printf("\t\t\tProblem Number 2.14\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.14 (page no. 78)
// Solution

//It is necessary that pressure be expressed as psfa when the volume is in cubic feet
//100 psia = 100*144 psfa
p1=100*144; //Unit:psfa  //initial pressure
v1=2; //Unit:ft^3/lb //Initial Specific Volume
v2=1; //Unit:ft^3/lb //Final Specific Volume
w=p1*v1*log(v2/v1); //work done on fluid //Unit:ft*lbf/lbm
printf("Work done on fluid = %f ft*lbf/lb\n",w);
//1 Btu = 778 ft*lbf 
printf("Work done on the fluid per pound of fluid is %f Btu/lbm",w/778);

//Example 5_17
clc();
clear;
//To compare  the density of lattice points
//For (110) plane
area=sqrt(2)   //units in a
areacontains=(1/4)*4
density=1/area       //units in a
//(111) plane
areaa=1/sqrt(2)     //interms of a
eo=sqrt(3)/sqrt(2)
area1=eo/sqrt(2)
density=(3*(1/6))/(area1)
printf("The ratio of density of planes is %.3f:%.3f",sqrt(2),sqrt(3))

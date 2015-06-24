clc
//Initialization of variables
r1=920 //kg/m^3
r2=1030 //kg/m^3
//calculations
VtbyV2=r2/r1
V1byV2=VtbyV2-1
V1byVt=1/(1+1/V1byV2)
//results
printf("fraction = %.3f ",V1byVt)

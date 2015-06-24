clear;
clc;
printf("\t\t\tExample Number 3.1\n\n\n");
// buried pipe 
// illustration3.1
// solution

d = 0.15;// [m] diameter of pipe
r = d/2;// [m] radius of pipe
L = 4;// [m] length of pipe
Tp = 75;// [degree celsius] pipe wall temperature
Tes = 5;// [degree celsius] earth surface temperature
k = 0.8;// [W/m per degree celsius] thermal conductivity of earth 
D = 0.20;// [m] depth of pipe inside earth
// We may calculate the shape factor for this situation using equation given in table 3-1 
// since D<3*r
S = (2*%pi*L)/acosh(D/r);// [m] shape factor
// the heat flow is calculated from 
q = k*S*(Tp-Tes);// [W]
printf("heat lost by the pipe is %f W",q);
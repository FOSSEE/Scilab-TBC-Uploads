clear;
clc;
printf("\t\t\tExample Number 9.4\n\n\n");
// Flow boiling
// Example 9.4(page no.-506)
// solution

p = 5*101325/10^(6);// [MPa] pressure of water 
d = 0.0254;// [m] diameter of tube 
Tw = 10;// [degree celsius]
// for calculation we use equation (9-45), noting that 
dT = 10;// [degree celsius]
// the heat transfer coefficient is calculated as 
h = 2.54*Tw^(3)*exp(p/1.551);// [W/square meter degree celsius]
// the surface area for a 1-m length of tube is 
L = 1;// [m]
A = %pi*d*L;// [square meter]
// so the heat transfer is 
q = h*A*dT;// [W/m]
printf("the heat transfer in a 1.0 m length of tube is %f W/m",q);
clear;
clc;
printf("\t\t\tExample Number 8.13\n\n\n");
// cavity with transparent cover 
// Example 8.13 (page no.-433-434) 
// solution

E1 = 0.5;// emissivity of rectangular cavity
t2 = 0.5;// transmissivity
rho2 = 0.1;// reflectivity
E2 = 0.4;// emissivity
// from example 8-9 we have
// per unit depth in the z direction we have 
A1 = 25+25+10;
A2 = 10;
// we may evaluate K from equation(8-96a)
K = E1/(t2+(E2/2));
// the value of Ea is then computed from equation (8-96) as 
Ea = (t2+(E2/2))*K/[(A2/A1)*(1-E1)+K];
printf("apparent emissivity of covered opening is %f ",Ea);
// if there were no cover present, the value of Ea would be given by equation (8-47) as
Ea1 = E1*A1/[A2+E1*(A1-A2)];
printf("\n\n if there were no cover present, the value of Ea(apparent emissivity) would be %f",Ea1);





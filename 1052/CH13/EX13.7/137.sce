clc;
//Example 13.7
//page no 142
printf("Example 13.7 page no 142\n\n");
//refer to example 13.6
rho=1260//density,kg/m^3
v=8//flow velocity,m^2/s
D=0.02//diameter,m
meu=1.49//viscosity
R_e=rho*v*D/meu//reynolds no
printf("\n reynolds no R_e=%f ",R_e);
V=14000//volume in gallons of glycerine pass through a cross section of tube 
q=159.6//flow rate
t=V/q//time
printf("\n time t=%f min",t);

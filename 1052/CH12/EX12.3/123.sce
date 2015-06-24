clc;
//Example 12.3
//page no 126
printf("\n Example 12.3 page no 126\n\n");
//to determine the teynolds no of a gas stream 
v=3.8//velocity through the duct 
D=0.45//duct diameter
rho=1.2//density of gas
meu=1.73e-5//viscosity of gas
printf("\n velocity v=%f m/s\n diameter D=%f m\n density rho=%f kg/m^3\n viscosity meu=%f kg/m*s",v,D,rho,meu);
R_e=D*v*rho/meu//reynolds no
printf("\n reynoldsno R_e=%f ",R_e);

clc;
//Example 25.2
//page no 371
printf("Example 25.2 page no 371\n\n");
//refer to example 25.1
V=0.2//packing volume
n=100//no. of particle assume
V_p=V*1000/n//the volume of single particle,mm^2//
S_p=2.18//average surface area of particle,mm^2
a_p=S_p/V_p//specific surface area of particle ,(mm)^-1
D_p = 6/a_p//effective diameter of particle,mm
D_p=5.50//round off value for accurate answer
rho=0.235//density of fluid,g/cm^3
meu=2e-4//viscosity,g/cm.s
v=10//interstitial velocity ,cm
R_e=round((D_p/v)*rho*v/meu)//reynolds no
printf("\n Reynolds no R_e=%f ",R_e);
//from R_e value we can conclude that the flow of fluid would be in the turbulent region

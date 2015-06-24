clc;
//Example 12.2
//page no 125
printf("Example 12.2 page no 125\n\n");
//to calculate reynolds number
L=2.54//diameter of tube in cm
rho=1.50//density of liquid in gm/cm^3
v=20//velocity of flow in cm/s
meu=0.78e-2//viscosity of liquid in g/cm*s
printf("\n diameter of tube L=%f cm\n density  rho=%f gm/cm^3\n velocity v=%f cm/s\n viscosity meu=%f g/cm*s",L,rho,v,meu);
R_e=L*rho*v/meu//reynolds number
printf("\n Reynolds no. R_e=%f ",R_e);

clc;
//Example 14.1
//page no 148
printf("Example 14.1 page no 148\n\n");
//a liquid flow through a tube
meu=0.78e-2//viscosity of liquid,g/cm*s
rho=1.50//density,g/cm^3
D=2.54//diameter,cm
v=20//flow velocity
R_e=D*v*rho/meu//reynolds no
printf("\n Reynolds no R_e=%f ",R_e);

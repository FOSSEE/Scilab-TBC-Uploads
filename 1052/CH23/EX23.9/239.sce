clc;
//Example 23.9
//page no 344
printf("Example 23.9 page no 344\n\n");
//the bottom of a ship,moving in water
rho=1000//density of water
v=12//velocity of boat,m/s
L=20//length,m
W=5//width ,m
meu=1e-3//viscosity
R_e=rho*v*L/meu//reynolds no
printf("Reynolds no R_e=%f ",R_e);
//from reynolds no  flow is turbulent
C_d=0.031/(R_e^(1/7))//coeff. discharge\
printf("\ncoeff. discharge C_d=%f ",C_d);
//calculation of the drag on area LW
F_d=(1/2)*C_d*rho*v^2*L*W//drag force
printf("\n drag force F_d=%f N",F_d); 

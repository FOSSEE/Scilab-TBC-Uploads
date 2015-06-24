clc;
//Example 5.2
//page no. 42
printf("Example 5.2 page no 42\n\n");
//To calculate the force to maintain movement of left plate 
//velocity of moving plate is equal to the velocity of the plate and velocity of the gas at the surface of the stationary plate is zero
k=1.66//kinamatic viscosity of gas
rho=0.08//density of gas
d=0.0833//distance between plate
v1=300//velocity of left plate
v2=0//velocity of stationary plate
g_c=4.17*10^(8)//gravitational constant
printf("given \n kinamatic viscosity =%2f ft^2/hr\n rho=%2f lb/ft^3\n d=%4f ft\n v1=%f ft/hr\n v2=%f ft/hr\n gc=%f (ft*lb/hr)/lbf*hr",k,rho,d,v1,v2,g_c);
tou_xy=-k*rho*((v2-v1)/(g_c*d))//the frce necessary to mantain the movement of the left plate
printf("\n force tou_xy=%f  lbf/ft^2",tou_xy);

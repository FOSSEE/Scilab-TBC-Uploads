clc;
//Example 13.4
//page no 138
printf(" Example 13.4 page no 138\n\n ");
//an air conducting duct has a rectangular cross section
w=1//width of rectangular section 
h=0.25//height of rectangular section
D=2*w*h/(w+h)//equivalent or hydraulic diameter
printf("\n hydraulic diameter D=%f m",D)
R_e=2300//critical reynolds no
neu=1e-5//kinematic viscosity of air
v=R_e*neu/D//velocity
printf("\n velocity of air v=%f m/s",v);

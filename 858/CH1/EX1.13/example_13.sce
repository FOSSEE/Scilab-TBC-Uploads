clc
clear 

printf('example 1.13 page number 38\n\n')

//to find the settling velocity as a function of time
z0 = 30.84;
z1 = 29.89;
z2 = 29.10;
h = 4;

u1_t0 = (-3*z0+4*z1-z2)/(2*h);
u1_t4 = (-z0+z2)/(2*h);
u1_t8 = (z0-4*z1+3*z2)/(2*h);

//considering data set for t = 4,8,12 min
z0 = 29.89;
z1 = 29.10;
z2 = 28.30;
u2_t4 = (-3*z0+4*z1-z2)/(2*h);
u2_t8 = (-z0+z2)/(2*h);
u2_t12 = (z0-4*z1+3*z2)/(2*h);

//considering data set for t = 8,12,16 min
z0 = 29.10;
z1 = 28.30;
z2 = 27.50;
u3_t8 = (-3*z0+4*z1-z2)/(2*h);
u3_t12 = (-z0+z2)/(2*h);
u3_t16 = (z0-4*z1+3*z2)/(2*h);

//taking average
u_t4 = (u1_t4+u2_t4)/2;
u_t8 = (u1_t8+u2_t8+u3_t8)/3;
u_t12 = (u2_t12+u3_t12)/2;

printf("u_t0 = %f cm/min\n u_t4 = %f cm/min\n u_t8 = %f cm/min \n u_t12 = %f/n cm/min\n u_t16 =%f/n cm/min ",u1_t0,u_t4,u_t8,u_t12,u3_t16)

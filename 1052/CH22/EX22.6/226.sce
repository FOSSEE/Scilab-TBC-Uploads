clc;
//Example 22.6
//page no 301
printf("Example 22.6 page no 301\n\n");
//oil is flowing through a standard 3/2 inch steel pipe containing a 1 inch square edged orifice
v_gal=400//orifice velocity of oil in gal/hr
v_o=400*144/(0.785*3600*7.48)//orifice velocity in ft/hr
D_o=1/12//diameter of orifice
rho=0.87*62.4//density of oil
meu=20.6*0.000672//viscosity of oil
R_e=D_o*v_o*rho/meu
printf("\n reynolds no =%f ",R_e);
D_r=0.62//ratio of orifice plate to pipe diametersD_o/D1 = 1/1.61
C_d=0.76//discharge coeff. fro fig 19.8
g=32.2//grav. acc. ft/s^2
h=(v_o^2/(2*g*(C_d)^2))*(1-D_r^4)//height of oil in gauge reading
printf("\n gauge reading h=%f ft ",h);

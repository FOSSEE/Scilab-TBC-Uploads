clear
clc
//Example 6.4 WATER DEFLECTED BY A VANE
r=0.0417; //[ft]
A=%pi*r^2 //area[ft^2]
v=100; //velocty[ft/s]
rho=1.94; //[slugs/ft^3]
m=rho*A*v; //mass flow rate[slugs/s]
theta=60;//degrees
//Momentum outflow vector, mo=[mo_x mo_y]
mo=[m*v*cosd(theta) -m*v*sind(theta)]
//Momentum inflow vector, mi=[mi_x mi_y]
mi=[m*v 0]
//Force vector, F=[Fx Fy] 
F=mi-mo //[lbf]
printf("\n The force exerted by the jet on the vane, F = (%.1f lbf)i+(%.1f lbf)j.\n",F(1),F(2))
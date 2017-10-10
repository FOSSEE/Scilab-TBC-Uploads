clear
clc
//Example 3.10 FORCE TO OPEN AN ELLIPTICAL GATE
g_water=9810; //specific weight of water[N/m^3]
z_cen=10; //[m]
p=(g_water*z_cen)/10^3 //pressure at the centroid level[kPa]
a=2.5; //[m]
b=2; //[m]
A=%pi*a*b //area[m^2]
Fp=p*A/10^3//resultant force[MN]
I=%pi*a^3*b/4 //moment of inertia[m^4]
y=12.5; //slant distance from the water surface to centroid[m]
del_y=I/(y*A)//distance from center to center of pressure[m]
//Moment equilibrium about the hinge
F=Fp*10^3*(a+del_y)/(2*a) //force[kN]
printf("\nThe normal force F required to open the gate = %.f kN.\n",F)
clear
clc
//Example 3.9 HYDROSTATIC FORCE DUE TO CONCRETE
z=2.44; //height[m]
w=1.22; //width[m]
A=z*w //area of panel[m^2]
g_concrete=23.6; //specific weight of concrete[kN/m^3]
z_cen=z/2 //depth of centroid[m]
p=g_concrete*z_cen //pressure at the centroid level[kPa]
F=p*A //force[kN]
printf("\nThe force acting on one side of a concrete = %.1f kN.\n",F)
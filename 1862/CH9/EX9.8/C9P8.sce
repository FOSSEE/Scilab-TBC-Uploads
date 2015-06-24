
clear
 clc
//to find tension in the wire
//to find force exerted by the hinge on the beam


// GIVEN::

//refer to figure 9-24(a) from page no. 190
//length of the beam
L = 3.3//in meters
//mass of beam
m = 8.5//in kg
//distance at which wire is connected
d = 2.1//in meters
//angle made by beam with horizontal
theta = 30//in degrees
//mass of body
M = 56//in kg
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:

//refer to figure 9-24(b) from page no. 190
//angle alpha from geometry
alpha = atand((d-(L*sind(theta)))/(L*cosd(theta)))//in degrees
k = M*g+m*g;
j = m*g/2;
//applying equllibrium conditions to get 4 equations
A = [0 1 0 -1 ; 1 0 1 0 ; 1 -tand(theta) 0 0 ; 0 0 1 -tand(alpha)];
b = [0 ; k ; j ; 0];
c = A\b
Fv = c(1)
Fh = c(2)
Tv = c(3)
Th = c(4)

Fv = round(Fv)
Fh = round(Fh)
Th = round(Th)
//resultant tension in the wire
T = sqrt(Th^2 + Tv^2)//in N
//resultant force exerted by the hinge on the beam
F = sqrt(Fh^2+ Fv^2)//in N
T = round(T)
F = round(F)
//angle made by vector F with horizontal
fi = atand(Fv/Fh)//in degrees

printf ("\n\n Vertical force Fv = \n\n %3i N",Fv);
printf ("\n\n Horizontal force Fh = \n\n %3i N",Fh);
printf ("\n\n vertical tension in in wire Tv = \n\n %3i N",Tv);
printf ("\n\n Horizontal tension in in wire Th = \n\n %3i N",Th);
printf ("\n\n Resultant tension in the wire T = \n\n %3i N",T);
printf ("\n\n Resultant force exerted by the hinge on the beam F = \n\n %3i N",F);
printf ("\n\n angle made by vector F with horizontal fi = \n\n %.1f degrees",fi);

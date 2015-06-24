//Determination of Miller–Bravais Indices for a Plane Within a Hexagonal Unit Cell

clear;
clc;

printf("\tExample 3.11\n");

//This plane intersects the a1 axis at a distance a from the origin of the a1-a2-a3-z coordinate axes system.

//Furthermore, its intersections withthe a2 and z axes are -a and c.

//Therefore, in terms of the lattice parameters, these intersections are 1, -1 and 1.

h=1;
k=-1;
l=1;
i=-(h+k);

x=[h k i l];
disp(x,"The indices of plane are");

//End
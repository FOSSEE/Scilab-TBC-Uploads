//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.28aw
//finding the image of a distant object formed by combination of two convex lens by using thin lens formula

//given data
f=20; //focal length(in cm) of the given convex lens
d=60; //coaxial separation(in cm) between the two convex lenses
u=-(d-f); //object distance(in cm) for the second lens since first image is formed at focus of first lens

//calculation
v=1/((1/u)+(1/f)); //lens formula

disp(v,'final image is formed on the right of the second lens at a distance(in cm) of');





//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.28bw
//finding the image of a distant object formed by combination of two convex lens by using equivalent lens method

//given data
f1=20; //focal length(in cm) of the first convex lens
f2=20; //focal length(in cm) of the first convex lens
d=60; //coaxial separation(in cm) between the two convex lenses

//calculation
F=1/((1/f1)+(1/f2)-(d/(f1*f2))); //equivalent focal length formula for equivalent lens method
D=d*F/f1; //distance(in cm) from the second lens at which equivalent lens is to be placed
//image of distant object is formed at focus of equivalent lens

disp(abs(D)-abs(F),'on right side of the second lens,the final image is formed at a distance(in cm) of ');




//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.23w
//calculation of location of image of an object placed in front of a concavo-convex lens made of glass

//given data
R1=20; //radius of curvature(in cm) of first surface of concavo-convex lens
R2=60; //radius of curvature(in cm) of second surface of concavo-convex lens
mu=1.5; //refractive index of the material of lens
u=-80; //object distance(in cm)
C1C2=160; //coaxial distance(in cm) between both the lenses

//calculation
f=1/((mu-1)*(1/R1-1/R2)); //lens maker's formula

disp(f,'focal length(in cm) of the given concavo-convex lens is');

v=1/((1/u)+(1/f)); //lens formula

if(v>0)
    disp(v,'first image is formed on right side of first lens at a distance(in cm) of');
else
    disp(-v,'first image is formed on left side of first lens at a distance(in cm) of');
end

ff=f; //focal length(in cm) of the second lens same as first lens
uf=v-C1C2 //object distance(in cm) for second lens since image by first lens acts as object of the second lens
vf=1/((1/uf)+(1/ff)); //lens formula

if(vf>0)
    disp(vf,'final image is formed on right side of second lens at a distance(in cm) of');
else
    disp(-vf,'final image is formed on left side of second lens at a distance(in cm) of');
end





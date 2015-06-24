//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.16w
//calculation of height of the image of an object placed along axis ,at a distance from a horizontal cylindrical glass rod

//given data
u=-20; //object distance (in cm)
R=5; //radius of curvature of the spherical convex surface (in cm)
mu1=1; //refractive index of the medium in which object is kept
mu2=1.5; //refractive index of the medium of spherical concave surface
h1=.5; //height of the object in mm

//calculation
v=mu2/((mu2-mu1)/R+(mu1/u)) //formula for refraction at spherical surface
m=(mu1*v)/(mu2*u); //lateral magnification ratio

if(v>0)
    disp(v,'image is formed inside the rod at a distance(in cm) of');
if(m==-1)
    disp('the image will be of same height as the object and is inverted');
if(m==1)
    disp('the image will be of same height as the object and is erect');
end

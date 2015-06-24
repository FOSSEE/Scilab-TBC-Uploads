//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.6
//calculation of position of the image of an object placed at a distance from spherical convex surface

//given data
u=-15; //object distance(in cm)
R=30; //radius of curvature of the spherical convex surface(in cm)
mu1=1; //refractive index of the medium in which object is kept
mu2=1.5; //refractive index of the medium of spherical convex surface

//calculation
v=mu2/((mu2-mu1)/R+(mu1/u)); //formula for refraction at spherical surface

if(v>0)
    disp(v,'real image is formed on right side of spherical surface at a distance(in cm)');
else
    disp(v,'virtual image is formed on left side of spherical surface at a distance(in cm)');
end

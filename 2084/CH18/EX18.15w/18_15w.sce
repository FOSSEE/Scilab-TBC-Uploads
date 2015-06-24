//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.15w
//calculation of location of the image of an object placed at a distance from the spherical convex surface

//given data
u=-25; //object distance(in cm)
R=20; //radius of curvature of the spherical convex surface(in cm)
mu1=1; //refractive index of the medium in which object is kept
mu2=1.5; //refractive index of the medium of spherical convex surface

//calculation
v=mu2/((mu2-mu1)/R+(mu1/u)) //formula for refraction at spherical surface

if(v>0)
    disp(v,'image is formed on the right of the separating surface at a distance(in cm) of');
else
    disp(-v,'image is formed on the left of the separating surface at a distance(in cm) of');
end

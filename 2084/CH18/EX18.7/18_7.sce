//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.7
//calculation of the size of the image of an object placed at a distance from the spherical concave surface

//given data
u=-40; //object distance(in cm)
R=-20; //radius of curvature of the spherical concave surface(in cm)
mu1=1; //refractive index of the medium in which object is kept
mu2=1.33; //refractive index of the medium of spherical concave surface
h1=1; //size of the object(in cm)

//calculation
v=mu2/((mu2-mu1)/R+(mu1/u)); //formula for refraction at spherical surface
h2=(mu1*v*h1)/(mu2*u);  //formula for lateral magnification

if(h2>0)
    disp(h2,'image is erect and is of size(in cm)');
else
    disp(h2,'image is inverted and is of size(in cm)');
end

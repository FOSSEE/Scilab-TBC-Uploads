//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.17w
//calculation of apparent depth of a air bubble inside a glass sphere

//given data
u=-4; //object distance (in cm)
R=-10; //radius of curvature of the spherical glass sphere(in cm)
mu1=1.5; //refractive index of the glass sphere
mu2=1; //refractive index of air bubble

//calculation
v=mu2/((mu2-mu1)/R+(mu1/u)) //formula for refraction at spherical surface

if(v<0)
    disp(-v,'below the surface the bubble will appear at a distance(in cm) of');
 else
     disp(v,'above the surface the bubble will appear at a distance(in cm) of');
end

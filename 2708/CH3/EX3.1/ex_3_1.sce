//Example 3.1 // Angle of Polarization
clc;
clear;
//given data :
u=1.54;//refractive index of glass
i=atan(u);//incidence angle in radian
r=%pi/2 -i;//refraction angle  in radian brewester's law
r=r*180/%pi;// to convert in degree
disp(r,"angle of refraction in degree")

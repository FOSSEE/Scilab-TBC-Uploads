//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear; 
//example 18.4
//calculation of refractive index of material from known critical angle

//given data
thetac=48.2; //critical angle for water(in degree)

//calculation
//snell's law with respect to total internal reflection
mu=1/sind(thetac); //sind represents that the argument is in degree 

disp(mu,'refractive index of material is ');

//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.6
//calculation of the diameter of the disc image

//given data
lambda=590*10^-9//wavelength(in m) of the light used
b=10*10^-2//diameter(in m) of the converging lens used
d=20//distance(in m) between the lens and the point of focus

//calculation
sintheta=1.22*lambda/b//angular radius
r=d*sintheta//radius of the disc image
d=2*r//diameter of the disc image

printf('the diameter of the disc image is %3.1e cm',d)

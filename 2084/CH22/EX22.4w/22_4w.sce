//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 22.4w
//calculation of the illuminance at a small surface area of the table-top

//given data
d=.50//distance(in m) of the point source above the table-top
lumflux=1570//luminous flux(in lumen) of the source
d1=.8//distance(in m)from the source

//calculation
I=lumflux/(4*%pi)//luminous intensity of the source in any direction

//E=I*cosd(theta)/r^2........illuminance
r=d//for point A
theta=0//for point A
EA=I*cosd(theta)/r^2//illuminance at point A

r1=d1//for point B
theta1=acosd(d/d1)//for point B
EB=I*cosd(theta1)/r1^2//illuminance at point B

printf('the illuminance at a small surface area of the table-top directly below the surface is %d lux',round(EA))
printf('\nthe illuminance at a small surface area of the table-top at a distance 0.80 m from the source is %d lux',EB)

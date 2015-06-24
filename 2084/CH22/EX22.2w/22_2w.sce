//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 22.2w
//calculation of the total luminous flux emitted by the source and the total luminous intensity of the source

//given data
r=1*10^-2//radius(in m) of the circular area
d=2//distance(in m) from the point source
lumflux=2*10^-3//luminous flux(in lumen)

//calculation
deltaw=(%pi*r*r)/(d*d)//solid angle subtended by the area on the point source
F=(4*%pi*lumflux)/(deltaw)//total luminous flux
lumint=lumflux/deltaw//luminous intensity

printf('the total luminous flux emitted by the source is %d lumen',round(F))
printf('\nthe total luminous intensity of the source is %d cd',lumint)

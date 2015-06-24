//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.10w
//calculation of the stretch produced in the spring

//given data
d=1*10^-2//stretch(in m) of the spring
R=6400*10^3//radius(in m) of the earth
h=800*10^3//height(in m) above the earth's surface

//calculation
//The extension in the spring on the surface is 
//1*10^-2 = (G*M*m)/(k*R^2)...........(1)
//The extension in the spring at height h above the surface
//x = (G*M*m)/(k*(R+h)^2).............(2)
//from above equations,we get
x=d*((R^2)/(R+h)^2)

printf('the stretch produced in the spring is %3.2f cm',x*10^2)

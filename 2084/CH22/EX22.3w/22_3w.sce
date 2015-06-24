//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 22.3w
//calculation of the luminous flux falling on a plane

//given data
P=100//power(in W) input of the bulb
lumeff=25//luminous efficiency(in lumen W^-1)
A=1*10^-4//area(in m^2)
d=50*10^-2//distance(in m) of the area from the lamp

//calculation
deltaF=lumeff*P//luminous flux emitted by the bulb
I=deltaF/(2*%pi)
deltaw=A/d^2//solid angle(in sr)subtended by the object on the lamp
//I = deltaF/deltaw......luminous intensity
deltaF=I*deltaw//luminous flux emitted in the solid angle

printf('the luminous flux falling on the plane is %3.2f lumen',deltaF)

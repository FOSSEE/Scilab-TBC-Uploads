//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.5w
//calculation of the object distance and the angular magnification for the least strain in the eyes

//given data
fo=.5*10^-2//focal length(in m) of the objective lens
fe=5*10^-2//focal length(in m) of the eyepiece
d=7*10^-2//separation(in m) between the objective lens and the eyepiece
D=25*10^-2//least distance(in m) for the clear vision

//calculation
v=d-fe//distance at which the first image should be formed
u=1/((1/v)-(1/fo))//lens formula for the objective lens
m=(v*D)/(u*fe)//angular magnification

printf('the object distance for the least strain in the eyes is %3.1f cm',abs(u*10^2))
printf('\nthe angular magnification for the least strain in the eyes is %d',m) 

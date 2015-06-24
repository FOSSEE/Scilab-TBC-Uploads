//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.2
//calculation of the angular magnification and the length of the microscope tube

//given data
fo=1*10^-2//focal length(in m) of the objective lens
fe=2.5*10^-2//focal length(in m) of the eyepiece
u=-1.2*10^-2//object distance(in m)
D=25*10^-2//least distance(in m) for the clear vision

//calculation
v=1/((1/fo)+(1/u))//distance where the first image is formed ....by the lens formula
m=(v*D)/(u*fe)//angular magnification
L=v+fe//length of the tube

printf('the angular magnification is %d',round(m))
printf('\nthe length of the microscope tube is %3.1f cm',L*10^2)

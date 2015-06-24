//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.6w
//calculation of the length of the tube and the angular magnification produced by the telescope

//given data
fo=200*10^-2//focal length(in m) of the objective lens
fe=4*10^-2//focal length(in m) of the eyepiece
u=10*10^3//object distance(in m)

//calculation
L=fo+fe//length of the tube
m=-fo/fe//angular magnification

printf('the length of the tube is %d cm',L*10^2)
printf('\ngthe angular magnification is %d',m)

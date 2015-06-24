//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.7w
//calculation of the tube length,magnifying power and angular magnification

//given data
fo=50*10^-2//focal length(in m) of the objective lens
fe=-5*10^-2//focal length(in m) of the eyepiece
u=-2//object distance(in m)

//calculation
L=fo-abs(fe)//length of the tube
m=-fo/fe//magnifying power
v=1/((1/fo)+(1/u))//by lens formula for the objective lens
Ldash=v-abs(fe)//tube length
mdash=v/abs(fe)//angular magnification

printf('the tube length for large distance viewing is %d cm',L*10^2)
printf('\nthe magnifying power for the large distance viewing is %d',m)
printf('\nthe tube length for viewing object at 2 m is %3.2f cm',Ldash*10^2)
printf('\nthe angular magnification for viewing object at 2 m is %3.2f',mdash)

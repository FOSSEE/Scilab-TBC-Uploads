//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.4w
//calculation of the object distance and the angular magnification

//given data
fo=1*10^-2//focal length(in m) of the objective lens
fe=5*10^-2//focal length(in m) of the eyepiece
d=12.2*10^-2//separation(in m) between the objective lens and the eyepiece
D=25*10^-2//least distance(in m) for the clear visio

//calculation
ve=-D//image distance for the eyepiece
ue=1/((1/ve)-(1/fe))//object distance for eyepiece....by the lens formula
vo=d-abs(ue)//image distance for objective lens
uo=1/((1/vo)-(1/fo))//object distance for objective lens....by the lens formula
m=(vo/uo)*(1+(D/fe))//angular magnification

printf('the object should be placed at a distance of %3.1f cm from the objective lens to focus it properly',abs(uo*10^2))
printf('\nthe angular magnification is %d',m)

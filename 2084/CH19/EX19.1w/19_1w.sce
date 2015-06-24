//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.1w
//calculation of the angular magnification 

//given data
f=12*10^-2//focal length(in m) of the simple microscope
D=25*10^-2//distance(in m) at which the image is formed away from the eye

//calculation
m=1+(D/f)//angular magnification

printf('the angular magnification is %3.2f',m)

//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.3w
//calculation of the position of the image ,linear magnification and the angular magnification

//given data
u=-3.6*10^-2//object distance(in m) 
f=4*10^-2//focal length(in m)
D=25*10^-2//least distance for clear vision

//calculation
v=1/((1/f)+(1/u))//lens formula
m=v/u//linear magnification
alpha=D/abs(u)//angular magnification

printf('the image distance is %d cm',v*10^2)
printf('\nthe linear magnification is %d',m)
printf('\nthe angular magnification is %3.1f',round(alpha))

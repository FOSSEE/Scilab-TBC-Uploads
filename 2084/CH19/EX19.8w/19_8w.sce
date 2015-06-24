//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.8w
//calculation of the angular magnification due to the converging lens

//given data
f=50*10^-2//focal length(in m) of the converging lens
d=25*10^-2//distance(in m) from where the image can be seen by unaided eye

//calculation
//linear size = f*alpha
//angle formed .....abs(beta) = f*abs(alpha)/d
m=-f/d//angular magnification...m = -abs(beta)/abs(alpha)

printf('the angular magnification due to the converging lens is %d',m)

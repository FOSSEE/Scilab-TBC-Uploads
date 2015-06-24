//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.2
//calculation of the separation between successive bright fringes

//given data
d=0.10*10^-3//separation(in m) between the slits
lambda=600*10^-9//wavelength(in m) of the light used
D=1//separation(in m) between the slits and the screen

//calculation
w=D*lambda/d//separation between successive bright fringes

printf('the separation between successive bright fringes is %3.1e m or %3.1f mm',w,w*10^3)

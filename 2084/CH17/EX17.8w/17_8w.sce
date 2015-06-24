//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.8w
//calculation of the distance of bright fringe from the central maximum

//given data
lambda1=6500*10^-10//wavelength(in m) of the light beam1
lambda2=5200*10^-10//wavelength(in m) of the light beam2
d=2.0*10^-3//separation(in m) between the slits
D=120*10^-2//separation(in m) between the slits and the screen
n=3//number of the bright fringe

//calculation
y=n*lambda1*D/d//the distance of bright fringe from the central maximum
//from the equation of the distance of bright fringe from the central maximum.....y=n*lambda*D/d
//let m th bright fringe of beam 1 coincides with n th bright fringe of beam 2
//ym = yn
//m : n = 4 : 5.....is their minimum integral ratio
m=4
ym=m*lambda1*D/d//least distance from the central maximum where both wavelengths coincides
printf('the distance of the third bright fringe from the central maximum is %3.2f cm',y*10^2)
printf('\nthe least distance from the central maximum where both the wavelengths coincides is %3.2f cm',ym*10^2)

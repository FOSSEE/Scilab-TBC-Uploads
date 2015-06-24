//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.4w
//calculation of the separation between the slits

//given data
lambda=589.3*10^-9//wavelength(in m) of the sodium light
D=100*10^-2//separation(in m) between the slit and the screen
n=10//number of the bright fringe
x=12*10^-3//distance(in m) between the central maximum and the tenth bright fringe

//calculation
d=n*lambda*D/x//separation between the slits

printf('the separation between the slits is %3.1e m or %3.2f mm',d,d*10^3)

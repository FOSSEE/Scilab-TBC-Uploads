//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.10w
//calculation of the frequency at which the maxima of intensity are detected

//given data
r=20*10^-2//radius(in m) of the semicircular part
v=340//speed(in m/s) of the sound in air

//calculation
l1=2*r//straight distance
l2=%pi*r//curve distance
deltal=l2-l1
nu=v/deltal

printf('the frequency at which the maxima of intensity are detected are %d Hz and %d Hz',nu,2*nu)

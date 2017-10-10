clear;
clc;
printf("\nEx2.31\n");
//page no.-72
//given
h=6.62*10^-34;................//planck's constant in joule-sec
m=9*10^-31;....................//mass of e in kg
v=3*10^7;......................//velocity in m/sec
c=3*10^8;......................//speed of light in m/s

//By Heisenberg's uncertainty principle,

del_x=(h*sqrt(1-(v^2/c^2)))/(2*%pi*m*v).........//uncertainty in position in m

printf("\nuncertainty in position of electron is 0.0388 angstrom\n");

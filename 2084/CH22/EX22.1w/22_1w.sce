//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 22.1w
//calculation of the total radiant flux,total luminous flux and the luminous efficiency

//given data
E1=12//energy(in J) emitted by the source
lambda1=620*10^-9//wavelength(in m) of the light1
E2=8//energy(in J) emitted by the source
lambda2=580*10^-9//wavelength(in m) of the light2
rellum1=.35//relative luminosity of the light1
rellum2=.80//relative luminosity of the light2

//calculation
radflux=E1+E2//total radiant flux
lumflux1=E1*685*rellum1//luminous flux corresponding to the 12 W
lumflux2=E2*685*rellum2//luminous flux corresponding to the 8 W
lumflux=lumflux1+lumflux2//total luminous flux
lumeff=lumflux/radflux//luminous efficiency

printf('the total radiant flux is %d W',radflux)
printf('\nthe total luminous flux is %d lumen',lumflux)
printf('\nthe luminous efficiency is %d lumen W^-1',lumeff)

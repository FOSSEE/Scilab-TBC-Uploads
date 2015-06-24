//Chapter-9 example 22
//=============================================================================
clc;
clear;
disp('For half wave dipole Emax  =  60I/r')
disp('But Pr  = 73 I^2 Watts');
disp('For Pr  = 1 W');
disp('I = 1/sqrt(73)');
disp('Emax = (60/r)*I');
disp('Gdmax = (4*pi*phi)/Pr'),disp('as Pr =1 and phi = (r^2)*(E^2)/no')
disp('Gdmax = 4*pi*(r^2)*(E^2)/no');
disp('      = (4*pi*(r^2)*60*60)/(no*r*r*73)' );
disp('      = (4*pi*60*60)/(120*pi*73)');
Gdmax       = 120/73;

mprintf('Directivity of half wave dipole is %3.2f',Gdmax );
//=============end of program===================================================




//exapple 1.9 
clc; funcprot(0);
// Initialization of Variable
//solving equation of theta and delta
b(1,1)=90-70-20/60;//zenith distance at upper culmination
b(2,1)=90+20+40/60;//zenithdistance at lower culmination
A=[1 -1;1 1];//coeff of equations having declination of star and latitude of observation
x=A\b;
disp(x(1),"declination of star in (degrees)");
disp(x(2),"latitude of place of observation in (degrees):");

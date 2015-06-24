//Page Number:91
//Example 2.1
clc;
//Given,

a=6;//cm
b=4;//cm
d=4.47;//cm
c=3D+8; //m/s
lamc=2*a;
lamg=2*d;

//Signal wavelength
lam=lamg*lamc/(sqrt(lamg^2+lamc^2));
lam=lam/100; //m
f=c/lam;
disp('Ghz',f/1D+9,'Signal frequency of dominant mode:');

//page 98
clc;funcprot(0);//EXAMPLE 4.6
// Initialisation of Variables
n=2;........//No. of Atoms present per cell in BCC
a0=2.866*10^-8;.....//The lattice parameter of BCC iron in cm
rho1=0.994*10^15;.......//Planar density of (112)BCC in atoms/cm^2
//CALCULATIONS
a=sqrt(2)*a0^2;.........//Area of BCC iron in cm^2
rho2=n/a;........//Planar density of (110)BCC in atoms/cm^2
d1=a0*10^-9/(sqrt(1^2+1^2+0));......//The interplanar spacings for (110)BCC in cm
d2=a0*10^-9/(sqrt(1^2+1^2+2^2));......//The interplanar spacings for (112)BCC in cm
disp(rho2,"Planar density of (110)BCC in atoms/cm^2:")
disp(d1,"The interplanar spacings for (110)BCC in cm:")
disp(d2,"The interplanar spacings for (112)BCC in cm:")

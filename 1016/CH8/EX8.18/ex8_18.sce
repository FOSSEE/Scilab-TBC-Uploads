clc;clear;
//Example 8.18

//given data
D=32;//angle in degree
W=1.54*10^-10;//wavelength in angstrom
h=2;k=2;l=0;//lattice consts

//calcualtions
d=W/(2*sind(D));
a=d*sqrt(h^2+k^2+l^2);
disp(a,'lattice parameter in m');
r=sqrt(2)*a/4;
disp(r,'radius of atom in m')
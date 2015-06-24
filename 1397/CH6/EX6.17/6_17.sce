//clc();
clear;
//To calculate the lattice parameter of lead
lambda=1.5*10^-10;
h=2;
k=0;
l=2;
theta=34;     //bragg angle in degrees
n=1;
d=(n*lambda)/(2*sind(theta));
disp(d);
a=d*(sqrt(h^2+k^2+l^2));
a=a*10^10;      //converting from metres into angstrom
printf("lattice parameter in angstrom is");
disp(a);



//To Find the Energy due to an Electromagnetic Wave

//Example 40.3

clear;

clc;

E0=50;//Maximum Electric Field in N/C

x=50*10^-2;//Length of Cylinder in metres

A=10*10^-4;//Cross-Sectional Area of Cylinder in m^2

e0=8.85*10^-12;//Permittivity of free space

Uav=0.5*e0*E0^2;//Average Energy Density

V=A*x;//Volume of Cylinder

U=Uav*V;//Energy contained in the Volume of Cylinder

printf("Energy contained in the volume of the cylinder = %.1f*10^-12 J",U*10^12);

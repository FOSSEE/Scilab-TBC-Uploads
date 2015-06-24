//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.19w
//calculation of the moment of inertia of the system about the axis perpendicular to the rod passing through its middle point

//given data
m=1.2//mass(in kg) of the sphere
R=10*10^-2//radius(in cm) of the sphere
sep=50*10^-2//separation(in m) between the two spheres

//calculation
d=sep/2//distance of each sphere from centre
Icm=(2*m*R*R)/5//moment of inertia about diameter
I=Icm+(m*d*d)//by parallel axis theorem,moment of inertia about given axis 
//since second sphere has same moment of inertia
Isys=2*I//moment of inertia of the system

printf('the moment of inertia of the system about the axis perpendicular to the rod passing through its middle point is %3.3f kg-m^2',Isys)

clc;
//Given
r=90;//mm, radius of half circle
b=240;//mm, width
h=120;//mm, height

//Moment of inertia of rectangle
Ixr=1/3*b*h^3;//mm^4

//Moment of inertia of half circle
a=4*r/(3*%pi);//mm

b=h-a;//mm, Distance b from centroid c to X axis

I_AA=1/8*%pi*r^4;//mm^4, Moment of inertia of half circle with respect to AA'
A=1/2*%pi*r^2;//mm^2, Area of half circle

Ix1=I_AA-A*a^2;//mm^4, Parallel axis theorem

Ixc=Ix1+A*b^2;//mm^4, Parallel axis theorem

//Moment of inertia of given area
Ix=Ixr-Ixc;//mm^4

printf("Moment of inertia of area about X axis is Ix= %2.2e mm^4\n",Ix);

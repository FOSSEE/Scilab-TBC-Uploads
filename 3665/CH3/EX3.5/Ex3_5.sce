clc//
//
//

//Variable declaration
a=0.19;     //lattice constant(nm)
h=1;
k=1;
l=1;
lamda=0.058;    //wavelength of X rays(nm)
n=2;    //second order

//Calculation
d=a/sqrt(h^2+k^2+l^2);     //distance between planes(nm)
x=n*lamda/(2*d);
theta=asin(x);    //glancing angle(radian)
theta=theta*180/%pi ;     //glancing angle(degrees)

//Result
printf("\n glancing angle is %0.0f degrees",theta)

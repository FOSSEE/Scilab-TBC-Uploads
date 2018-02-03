clear
//
//
//

//Variable declaration
n=1     //order
theta=38.2*%pi/180     //glancing angle(radian)
lamda=1.54                 //wavelength(angstrom)
h=2
k=2
l=0

//Calculation
d=n*lamda/(2*sin(theta))       //lattice parameter(angstrom)
a=d*sqrt(h**2+k**2+l**2)       //lattice parameter(angstrom)

//Result
printf("\n lattice parameter is %0.3f  angstrom",a)

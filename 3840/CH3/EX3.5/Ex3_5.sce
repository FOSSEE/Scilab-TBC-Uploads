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
a=sqrt(h**2+k**2+l**2)
d=n*lamda*a/(2*sin(theta))       //lattice parameter(angstrom)

//Result

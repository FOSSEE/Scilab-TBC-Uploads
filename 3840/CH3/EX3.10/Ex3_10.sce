clear
//
//
//

//Variable declaration
n=1     //order
theta=19.2*%pi/180     //glancing angle(radian)
lamda=1.54                 //wavelength(angstrom)
h=1
k=1
l=1

//Calculation
d=n*lamda/(2*sin(theta))       //lattice parameter(angstrom)
a=d*sqrt(h**2+k**2+l**2)       //cube edge of unit cell(angstrom)

//Result

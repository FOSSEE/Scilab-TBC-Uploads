clear
//
//
//

//Variable declaration
n=1     //order
theta=32*%pi/180     //glancing angle(radian)
lamda=1.54               //wavelength(angstrom)
h=2
k=2
l=0

//Calculation
d=n*lamda/(2*sin(theta))       //lattice parameter(angstrom)
a=d*sqrt(h**2+k**2+l**2)       //cube edge of unit cell(angstrom)

//Result
printf("\n cube edge of unit cell is %0.1f  angstrom",a)

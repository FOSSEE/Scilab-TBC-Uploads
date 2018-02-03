clear
//
//
//

//Variable declaration
theta=9.5*%pi/180     //glancing angle(radian)
lamda=0.58     //wavelength of X-rays(angstrom)
n=1            //order
h=2
k=0
l=0

//Calculation
d=n*lamda/(2*sin(theta))                      
a=d*sqrt(h**2+k**2+l**2)    //lattice parameter(angstrom)

//Result
printf("\n lattice parameter is %0.3f  angstrom",a)
printf("\n answer given in the book varies due to rounding off errors")

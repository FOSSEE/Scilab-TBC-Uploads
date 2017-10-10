clear
//
//
//

//Variable declaration
n=1     //order of diffraction
lamda=1.54*10**-10     //wavelength(m)
theta=32      //angle(degrees)
h=2
k=2
l=0

//Calculation
theta=theta*%pi/180     //angle(radian)
d=n*lamda/(2*sin(theta))
a=d*sqrt(h**2+k**2+l**2)    //lattice parameter of lead(m)

//Result
printf("\n lattice parameter of lead is %0.1f  *10**-10 m",a*10**10)

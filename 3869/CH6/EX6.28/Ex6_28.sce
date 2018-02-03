clear
//
//
//

//Variable declaration
h=1
k=1
l=1              //miller indices
a=0.2            //lattice parameter(nm)
theta=(87/2)*%pi/180       //angle(radian)

//Calculation
d=a/sqrt(h**2+k**2+l**2)
lamda=2*d*sin(theta)      //wavelength of Xrays(nm)

//Result
printf("\n wavelength of Xrays is %0.3f  nm",lamda)

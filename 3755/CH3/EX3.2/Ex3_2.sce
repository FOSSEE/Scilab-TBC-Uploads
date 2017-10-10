clear
//
//
//

//Variable declaration
d=3.035*10^-10;    //lattice spacing(m)
theta=12;   //glancing angle(degree)
n=1;   //order

//Calculation
theta=theta*%pi/180;    //angle(radian)
lamda=2*d*sin(theta)/n;    //wavelength(m)

//Result
printf("\n wavelength is %0.3f angstrom",lamda*10^10)

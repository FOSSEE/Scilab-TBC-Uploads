clear
//
//
//

//Variable declaration
d=2.82*10^-10;    //lattice spacing(m)
theta=10;   //glancing angle(degree)
n=1;   //order

//Calculation
theta=theta*%pi/180;    //angle(radian)
lamda=2*d*sin(theta)/n;    //wavelength(m)

//Result
printf("\n wavelength is %0.5f angstrom",lamda*10^10)

clear
//
//
//

//Variable declaration
lamda=1.54;      //wavelength(angstrom)
theta=11;   //glancing angle(degree)

//Calculation
theta=theta*%pi/180;    //angle(radian)
d=lamda/(2*sin(theta));   //separation between lattice planes(angstrom)

//Result
printf("\n separation between lattice planes is %0.3f angstrom",d)

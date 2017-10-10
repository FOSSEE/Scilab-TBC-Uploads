clear
//
//
//

//Variable declaration
d=2.81;    //lattice spacing(angstrom)
theta1=15.1;   //glancing angle(degree)
theta2=17.1;   //glancing angle(degree)

//Calculation
theta1=theta1*%pi/180;    //angle(radian)
lamda1=2*d*sin(theta1);    //wavelength(angstrom)
theta2=theta2*%pi/180;    //angle(radian)
lamda2=2*d*sin(theta2);    //wavelength(angstrom)

//Result
printf("\n wavelengths are %0.3f angstrom and %0.4f angstrom",lamda1,lamda2)
printf("\n answer varies due to rounding off errors")

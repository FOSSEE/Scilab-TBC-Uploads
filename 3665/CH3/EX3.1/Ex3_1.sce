clc//
//
//

//Variable declaration
d=0.313;     //lattice spacing(m)
theta=7+(48/60);    //angle(degrees)
n=1;

//Calculation
theta=theta*%pi/180;    //angle(radian)
lamda=2*d*sin(theta)/n;    //wavelength of X-rays(nm)
//when theta=90
n=2*d/lamda;       //maximum order of diffraction possible

//Result
printf("\n wavelength of X-rays is %0.5f nm",lamda)
printf("\n answer varies due to rounding off errors")
printf("\n when theta=90, maximum order of diffraction possible is %0.3f ",n)

clear
//
//
//

//Variable declaration
d=1.181         //lattice spacing(angstrom)
theta=90*%pi/180     //glancing angle(radian)
lamda=1.540     //wavelength of X-rays(angstrom)

//Calculation
n=2*d*sin(theta)/lamda    //order of diffraction                    

//Result
printf("\n order of diffraction is %0.3f  ",n)

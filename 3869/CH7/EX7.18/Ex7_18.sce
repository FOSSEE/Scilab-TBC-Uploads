clear
//
//
//

//Variable declaration
d=0.282*10**-9         //lattice spacing(m)
theta=(8+(35/60))*%pi/180       //glancing angle(radian)
maxtheta=90*%pi/180
n=1                                 //order

//Calculation
lamda=2*d*sin(theta)/n         //wavelength of x-rays(m)
N=2*d*sin(maxtheta)/lamda      //maximum order of diffraction

//Result
printf("\n wavelength of x-rays is %0.3f  angstrom",lamda*10**10)
printf("\n maximum order of diffraction is %0.3f  ",N)
printf("\n answer for wavelength of x-rays given in the book is wrong")

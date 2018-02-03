clear
//
//
//

//Variable declaration
d=0.282           //lattice spacing(nm)
theta=(8+(35/60))*%pi/180     //glancing angle(radian)
n=1               //order

//Calculation
lamda=2*d*sin(theta)/n         //wavelength(nm)
N=2*d/lamda                         //maximum order of diffraction

//Result
printf("\n wavelength is %0.3f  nm",lamda)
printf("\n maximum order of diffraction is %0.3f  ",N)

clear
//
//
//

//Variable declaration
n=2                             //order
N=4250                          //grating lines(lines/cm)
theta=30*%pi/180            //angle(radian)

//Calculation
e=1/N
lamda=e*sin(theta)*10**8/n       //wavelength of spectral line(angstrom)

//Result
printf("\n wavelength of spectral line is %0.0f  angstrom",lamda)

clear
//
//
//

//Variable declaration
theta=15*%pi/180            //angle(radian)
a=2.5*10**-6                    //slit width(m)

//Calculation
lamda=a*%pi*sin(theta)*10**10/(1.43*%pi)       //wavelength of light(angstrom)

//Result
printf("\n wavelength of light is %0.0f  angstrom",lamda)
printf("\n answer given in the book is wrong")

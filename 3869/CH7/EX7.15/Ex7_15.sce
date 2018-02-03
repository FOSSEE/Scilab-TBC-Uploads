clear
//
//
//

//Variable declaration
theta=45*%pi/180       //glancing angle(radian)
d=275            //interplanar spacing(pm)
n1=3
n2=4

//Calculation
lamda=2*d*sin(theta)     //wavelength(pm)
lamda1=lamda/n1               //wavelength for n=3
lamda2=lamda/n2               //wavelength for n=4

//Result
printf("\n wavelength for n=3 is %0.0f pm and for n=4 is %0.2f pm",lamda1,lamda2)
printf("\n answer for wavelength for n=4 given in the book varies due to rounding off errors")

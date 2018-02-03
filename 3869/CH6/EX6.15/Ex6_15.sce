clear
//
//
//

//Variable declaration
lamda=0.82      //wavelength(m)
theta=75.86*%pi/180    //glancing angle(radian)
n=1                     //order
a=3                     //lattice constant(angstrom)

//Calculation
d=n*lamda/(2*sin(theta))      //space of reflecting plane(angstrom)
//here the value of d comes to 0.422 angstrom which is not equal to the value of a. hence the problem cannot be solved further 

//Result
printf("\n space of reflecting plane is %0.2f  angstrom",d)
printf("\n answer given in the book is wrong")

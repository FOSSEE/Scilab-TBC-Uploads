clear
//
//
//

//Variable declaration
lamdaB=0.92;    //wavelength(angstrom)
theta1=30;   //glancing angle(degree)
theta2=60;   //glancing angle(degree)

//Calculation
theta1=theta1*%pi/180;    //angle(radian)
theta2=theta2*%pi/180;    //angle(radian)
lamdaA=2*lamdaB*sin(theta1)/sin(theta1);    //wavelength of line A(angstrom)

//Result
printf("\n wavelength is %0.3f angstrom",lamdaA)
printf("\n answer in the book is wrong")

clear
//
//
//

//Variable declaration
theta1=6.45      //angle(degrees)
theta2=9.15      //angle(degrees)
theta3=13      //angle(degrees)
lamda=0.58     //wavelength(angstrom)

//Calculation
theta1=theta1*%pi/180     //angle(radian)
theta2=theta2*%pi/180     //angle(radian)
theta3=theta3*%pi/180     //angle(radian)
d=lamda/(2*sin(theta2))    //interplanar spacing of crystal(angstrom)

//Result
printf("\n interplanar spacing of crystal is  %0.3f  angstrom",d)
printf("\n answer varies due to rounding off errors")

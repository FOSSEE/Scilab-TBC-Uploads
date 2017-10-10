clear
//
//
//

//Variable declaration
lamda=0.58;      //wavelength(angstrom)
theta1=6+(45/60);   //glancing angle(degree)
theta2=9+(15/60);   //glancing angle(degree)
theta3=13;   //glancing angle(degree)

//Calculation
theta1=theta1*%pi/180;    //angle(radian)
theta2=theta2*%pi/180;    //angle(radian)
theta3=theta3*%pi/180;    //angle(radian)
x1=lamda/(2*sin(theta1));
x2=lamda/(2*sin(theta2));

//Result
printf("\n interplanar spacing is %0.3f angstrom",x2)
printf("\n answer varies due to rounding off errors")

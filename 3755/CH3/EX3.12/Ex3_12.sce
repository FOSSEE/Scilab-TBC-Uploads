clear
//
//
//

//Variable declaration
theta1=5+(23/60);   //glancing angle(degree)
theta2=7+(37/60);   //glancing angle(degree)
theta3=9+(25/60);   //glancing angle(degree)

//Calculation
theta1=theta1*%pi/180;    //angle(radian)
theta2=theta2*%pi/180;    //angle(radian)
theta3=theta3*%pi/180;    //angle(radian)
x1=sin(theta1);
X1=1/(10*x1);
x2=sin(theta2)/x1;
x3=sin(theta3)/x1;

//Result
printf("\n ratio of angles of incidence are %0.3f : %0.3f : %0.3f ",x1,x2,x3)
printf("\n the crystal is a simple cubic crystal")

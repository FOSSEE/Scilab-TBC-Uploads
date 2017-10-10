clear
//
//
//

//Variable declaration
lamda=0.586*10^-10;      //wavelength(m)
theta1=5+(58/60);   //glancing angle(degree)
theta2=12+(10/60);   //glancing angle(degree)
theta3=18+(12/60);   //glancing angle(degree)

//Calculation
theta1=theta1*%pi/180;    //angle(radian)
theta2=theta2*%pi/180;    //angle(radian)
theta3=theta3*%pi/180;    //angle(radian)
x1=sin(theta1);
x2=sin(theta2);
x3=sin(theta3);
d1=lamda/(2*sin(theta1));     //spacing for 1st order(m)
d2=2*lamda/(2*sin(theta2));     //spacing for 2nd order(m)
d3=3*lamda/(2*sin(theta3));     //spacing for 3rd order(m)
d=(d1+d2+d3)/3;      //spacing(m)

//Result
printf("\n ratio of angles of incidence are %0.3f : %0.4f : %0.4f which is nothing but %0.1f : %0.1f : %0.1f ",x1,x2,x3,x1,x2,x3)
printf("\n angles of incidence should be 1st, 2nd and 3rd orders")
printf("\n spacing is %0.3f *10^-10 m",d*10^10)
printf("\n answer varies due to rounding off errors")

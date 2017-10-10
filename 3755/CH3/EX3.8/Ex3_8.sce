clear
//
//
//

//Variable declaration
d=0.842*10^-10;    //lattice spacing(m)
theta1=8+(35/60);   //glancing angle(degree)
n1=1;   //order
n2=3;   //order

//Calculation
theta1=theta1*%pi/180;    //angle(radian)
theta3=asin(n2*sin(theta1));      //glancing angle(radian)
theta3=theta3*180/%pi ;       //glancing angle(degree)

//Result
printf("\n glancing angle is %0.3f degree",theta3)

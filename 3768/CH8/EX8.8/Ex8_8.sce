//Example number 8.8, Page number 172

clc;clear;
close;

//Variable declaration
r=0.04;    //radius(m)
i=1000*10**-3;    //current(mA)
B=10**-3;   //magnetic flux density(wb/m**2)
theta=45;   //angle(degrees)
//Calculation
A=%pi*r**2;     //area(m**2)
mew=i*A;        //magnetic dipole moment(amp m**2)
theta=theta*%pi/180;
tow=i*B*cos(theta);    //torque(Nm)
//Result
printf("magnetic dipole moment is %.4e Amp-m^2",mew)
printf("\n torque is %.4e Nm",tow)

//answer in the book varies due to rounding off errors

// SAMPLE PROBLEM 7/9
clc;funcprot(0);
// Given data
t=4;// s
theta=20;// degree
p=(2*%pi)/4;// rad/s

// Calculation
// (a)
// I_zz=(56/3)*mr^2;
// I_xx=(32/3)*mr^2;
// By using coefficient of I_xx and I_zz
I=56/3;// The moment of inertia
I_0=32/3;// The moment of inertia
costheta=1;// radian
n=I/((I_0-I)*costheta);// The ratio of angular rates
// (b)
tau=((2*%pi)/p)*abs(((I_0-I)/I)*cosd(theta));// s
beta=atand((I/I_0)*tand(theta));// degree
printf("\n(a)The number of complete cycles,n=%1.2f \n   The minus sign indicates retrograde precession where, in the present case,and p are essentially of opposite sense. Thus, the station will make seven wobbles for every three revolutions. \n(b)The period of precession,tau=%1.3f s",n,tau);

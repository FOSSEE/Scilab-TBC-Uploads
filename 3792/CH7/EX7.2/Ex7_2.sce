// SAMPLE PROBLEM 7/2
clc;funcprot(0);
// Given data
N_0=120;// rev/min
N=60;// rev/min
gamma=30;// degree
OCbar=10;// inch
CAbar=5;// inch
theta=30;// degree

// Calculation
// (a)
omega_0=(2*%pi*N_0)/60;// rad/sec
omega_1=(2*%pi*N)/60;// rad/sec
omega=[0,(omega_1*cosd(gamma)),(omega_0+(omega_1*sind(theta)))];// rad/sec
printf("\n(a)The angular velocity,omega=%1.2fj+%2.2fk rad/s",omega(2),omega(3));
alpha=[(omega_1*omega_0*cosd(theta)),0,0];// rad/sec^2
printf("\n(b)The angular acceleration,alpha=%2.1fi rad/s^2",alpha(1));   
r=[0,5,10];// inch
// (c)
// v=omega*r;
v_1=det([omega(2),omega(3);r(2),r(3)]);// in/sec
v_2=-det([omega(1),omega(3);r(1),r(3)]);// in/sec
v_3=det([omega(1),omega(2);r(1),r(2)]);// in/sec
v=[v_1,v_2,v_3];// in/sec
printf("\n(c)The velocity of point A,v=%2.1fi+(%1.0f)j+%1.fk in/sec",v(1),v(2),v(3));
// a=(alpha*r)+(omega*v)
a_1=det([alpha(2),alpha(3);r(2),r(3)])+det([omega(2),omega(3);v(2),v(3)]);// in/sec^2
a_2=-det([alpha(1),alpha(3);r(1),r(3)])+(-det([omega(1),omega(3);v(1),v(3)]));// in/sec^2
a_3=det([alpha(1),alpha(2);r(1),r(2)])+det([omega(1),omega(2);v(1),v(2)]);// in/sec^2
a=[a_1,a_2,a_3];// in/sec^2
printf("\n   The acceleration of point A,a=%1.0fi+(%1.0f)j+%3.0fk in/sec^2",a(1),a(2),a(3));

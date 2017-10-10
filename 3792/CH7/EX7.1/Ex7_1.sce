// SAMPLE PROBLEM 7/1
clc;funcprot(0);
// Given data
L=0.8;// m
N=60;// rev/min
betadot=4;// rad/s
beta=30;// degree

// Solution
// (a)
omega_x=betadot;// (i) rad/s
omega_z=(2*%pi*N/60);// (k) rad/s
omega=[omega_x,0,omega_z];// (i,j,k) rad/s
printf("\n(a)The angular velocity of OA,omega=%1.0fi+%1.2fk rad/s",omega(1),omega(3));
// (b)
omegadot_z=0;// (k) rad/s
omegadot_x=omega_z*omega_x;// (i) rad/s
alpha=omegadot_x+omegadot_z;// (j) rad/s^2
alpha=[0,alpha,0];// (i,j,k) rad/s^2
printf("\n(b)The angular acceleration of OA,alpha=%2.1fj rad/s^2",alpha(2));
// (c)
r=[0,0.693,0.4];// m
// v=omega*r;
v_1=det([omega(2),omega(3);r(2),r(3)]);// m/s
v_2=-det([omega(1),omega(3);r(1),r(3)]);// m/s
v_3=det([omega(1),omega(2);r(1),r(2)]);// m/s
v=[v_1,v_2,v_3];// m/s
printf("\n(c)The velocity of point A,v=%1.2fi+(%1.2f)j+%1.2fk m/s",v(1),v(2),v(3));
// (d)
a_1=det([alpha(2),alpha(3);r(2),r(3)])+det([omega(2),omega(3);v(2),v(3)]);// m/s^2
a_2=-det([alpha(1),alpha(3);r(1),r(3)])+(-det([omega(1),omega(3);v(1),v(3)]));// m/s^2
a_3=det([alpha(1),alpha(2);r(1),r(2)])+det([omega(1),omega(2);v(1),v(2)]);// m/s^2
a=[a_1,a_2,a_3];// m/s^2
printf("\n(d)The acceleration of point A,v=%2.1fi+(%2.1f)j+(%1.2f)k m/s^2",a(1),a(2),a(3));

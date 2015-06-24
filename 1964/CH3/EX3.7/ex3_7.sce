//Chapter-3, Example 3.7, Page 112
//=============================================================================
clc
clear
//INPUT DATA
l=1;//length of wire in m
v=50;//velocity in m/sec
B=1;//magnetic flux density in wb/m^2
theta1=90;//the angle of conductor in degrees to the field in case 1
theta2=30;//the angle of conductor in degrees to the field in case 2
//CALCULATIONS
E1=B*l*v*sin (theta1*%pi/180);//emf induced in conductor in case 1(1degree =3.14/180 radians)
E2=B*l*v*sin ((360+theta2)*%pi/180);//emf induced in conductor in case 2(1degree =3.14/180 radians)
//OUTPUT
mprintf("Thus the emf induced in case 1 is %2.0f volts \n",E1);
mprintf("Thus the emf induced in case 2 is %2.0f volts \n",E2);
//note:convert angle in degrees to radians and compute it.
//=================================END OF PROGRAM==============================

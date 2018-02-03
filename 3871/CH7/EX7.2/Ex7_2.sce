//===========================================================================
//chapter 7 example 2

clc;clear all;

//variable declaration
x	= 0.004;
y	= 0.707;		//power factor lagging
y1	= 0.5;		//power factor lagging

//calculaitons
theta 	= atan(x)		//theta in degrees
a	= cos(theta)
b	= sin(theta)
phi	= acos(y)
c	= cos(phi)/(a*cos(theta-phi))	//correction factor 
A      = cos(phi)/sin(phi);
e	= (b/(A+b))*100	//percentage error in %
phi1	= acos(y1) 
c1	= cos(phi1)/(a*cos(theta-phi1))	//correction factor 
B     = cos(phi1)/sin(phi1);
e1	= (b/(B+b))*100		//percentage error in %	

//result
mprintf("correction factor  when 0.707 pf lagging = %3.3f",c);
mprintf("\npercentage error =%3.2f percentage ",e);
mprintf("\ncorrection factor  when 0.707 pf lagging = %3.3f",c1);
mprintf("\npercentage error =%3.1f percentage ",e1)



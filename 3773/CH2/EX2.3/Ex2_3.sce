//Chapter 2: Antenna Basics
//Example 2-4.1
clc;

//Calculation
deff('y=f(x)','y=sin(x)')      //sin(theta)
omega=intg(20*%pi/180,40*%pi/180,f)
omega1=omega*(180/%pi)
deff('y=f1(x)','y=1')
omega2=intg(30,70,f1)
omega_f=omega2*omega1          //omega (square degrees)

//Result
mprintf("The solid angle, omega is %.0f square degrees",omega_f) 

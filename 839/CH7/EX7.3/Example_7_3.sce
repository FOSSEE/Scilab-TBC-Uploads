//clear//
clear;
clc;

//Example 7.3
//The quantities needed are
mu = 0.01; //[P]
delta_rho = 0.24; //[g/cm^3]
//Using Eq.(7.51),solving the quadratic equation for Vom_bar
a = 1.75*1/(0.11*0.4^3);
b = 150*0.01*0.6/(0.11^2*0.4^3);
c = - 980*0.24;
Vom_bar = (-b+sqrt(b^2-4*a*c))/(2*a); //[cm/s]
//Corresponding Reynolds number
Nre = 0.11*0.194*0.124/0.01;
//From Fig 7.13
m = 3.9;
//For 25 percent exapnsion
LbyLm = 1.25;
eps = 0.52;
//From Eq.(7.59)
Vo_bar = 1.94*(0.52/0.40)^3.9 //[mm/s] 

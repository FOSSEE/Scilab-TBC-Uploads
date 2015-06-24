clc;
clear;

printf("\n Example 9.32\n");

d2=54e-3; //outer diameter of the tube
d1=70e-3; // fin diameter
w=2e-3; //fin thickness
n=230;// number of fins per metre run
T_s=370; //Surface temperature
T=280; //Temperature of surroundings
h=30; //Heat transfer coeffecient between gas and fin
k=43; //Thermal conductivity of steel
L=(d1-d2)/2;

theta1=T_s-T;
//Assuming that the height of the fin is small compared with its circumference 
//and that it may be treated as a straight fin of length
l=(%pi/2)*(d1+d2);
b=2*l;//perimeter
A=l*w;//the average area at right-angles to the heat flow
m=((h*b)/(k*A))^0.5;
//From equation 9.254, the heat flow is given for case (b) as:
Qf=m*k*A*theta1*(%e^(2*m*L)-1)/(1+%e^(2*m*L));
Q=Qf*n;//Heat loss per meter run of tube
printf("\n The heat loss per metre run of tube = %.2f kW/m",Q*1e-3);

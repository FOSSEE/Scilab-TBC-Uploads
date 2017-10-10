//Example number 5.12, Page number 89

clc;clear;
close;

//Variable declaration
m=1.675*10**-27;    //mass(kg)
h=6.626*10**-34;   //plank constant
E=0.04;     //kinetic energy(eV)
e=1.6*10**-19;    //charge(c)
n=1;
d110=0.314*10**-9;   //spacing(m)
//Calculation
E=E*e;       //energy(J)
lamda=h/sqrt(2*m*E);
theta=asin(n*lamda/(2*d110));     //glancing angle(radian)
theta=theta*180/%pi;        //glancing angle(degrees)
theta_m=60*(theta-int(theta));
//Result
printf("glancing angle is %d degree and %d minutes",theta,theta_m)
//answer given in the book is wrong

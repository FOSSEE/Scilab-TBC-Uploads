//Example 18_5
clc();
clear;
//To find the magnetic moment of hydrogen atom
r=0.53*10^-10      //Units in meters
a=%pi*r^2       //Units in meters^2
q=1.6*10^-19          //Units in C
f=6.6*10^15        //Units in sec^-1
i=q*f          //Units in A
u=i*a          //Units in A meter^2
printf("The magnetic moment of Hydrogen atom is=")
disp(u)
printf("A meters^2")

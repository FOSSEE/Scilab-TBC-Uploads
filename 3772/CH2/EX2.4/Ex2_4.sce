// Problem no 2.4,Page no.33


clc;clear;
close;

D=10 //cm //diameter of circle
b=4 //cm //width of rectangle 
d=4 //cm //breadth of rectangle
Y=1 //cm //Distance of centroid of rectangle 1 to C.G
a=16 //cm**2 //area of rectangle

//Calculations

I_x_x_1=%pi*64**-1*(D**4) //cm**4 //moment of inertia of circle about x-x axis
I_x_x_2=b*d**3*12**-1+a*Y**2 //cm**4 //moment of inertia of rectangle about x-x axis
I_x_x=I_x_x_1-I_x_x_2 //cm**4 //Total moment of inertia of the section

//Result
printf("Total moment of inertia of the section is %.2f cm^4",I_x_x)

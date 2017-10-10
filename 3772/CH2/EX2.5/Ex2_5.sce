// Problem no 2.5,Page no.33


clc;clear;
close;


//Notifications has been changed as per requirement


h=8 //cm //height of triangle
b=8 //cm //breadth of triangle or diameter semicircle
d=4 //cm //diameter of circle enclosed

//Calculations

I_1=b*h**3*12**-1 //cm //moment of inertia of the triangle ABC about the axis AB
I_2=%pi*b**4*128**-1 //cm ////moment of inertia of the semicircle about the axis AB
I_3=%pi*d**4*64**-1 //cm //moment of inertia of circle about the circle about the axis

I=I_1+I_2-I_3 //cm //Moment of Inertia of the shaded area about the axia AB

//Result
printf("Moment of Inertia of the shaded area is %.2f cm",I)

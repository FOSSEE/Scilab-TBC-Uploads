// Problem 1.8,Page no.12


clc;clear;
close;


alpha=%pi/2 //degree //In case of semicircle

//Semicircle-1
r_1=20 //cm //radius of semicircle 
y_1=4*r_1*(3*%pi)**-1 //cm //distance from the base
a_1=(%pi*r_1**2)*2**-1 //cm**2 //area of semicircle

//Semicircle-2
r_2=16 //cm   //radius of semicircle
y_2=4*r_2*(3*%pi)**-1 //cm //distance from the base
a_2=(%pi*r_2**2)*2**-1 //cm**2 //area of semicircle

//Calculations


Y_bar=(a_1*y_1-a_2*y_2)*(a_1-a_2)**-1 //cm //centroid


//Result
printf("The centroid of the area is %.2f cm",Y_bar)

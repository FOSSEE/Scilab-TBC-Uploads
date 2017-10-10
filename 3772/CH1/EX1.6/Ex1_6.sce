// Problem 1.6,Page no.12


clc;clear;close;

//Rectangle-1
a_1=51200 //mm**2 
x_1=160 //mm
y_1=80 //mm

//Triangle-2
a_2=6400 //mm**2
x_2=80*3**-1 //mm
y_2=320*3**-1 //mm

//Semicircle-3
a_3=1250*%pi //mm**2
x_3=210 //mm
y_3=(160-(4*50-(3*%pi)**-1)) //mm


//Calculation

X_bar=(a_1*x_1-a_2*x_2-a_3*x_3)*(a_1-a_2-a_3)**-1 //mm
Y_bar=(a_1*y_1-a_2*y_2-a_3*y_3)*(a_1-a_2-a_3)**-1 //mm

//Result
printf("The centroid of the given area is %.2f mm",X_bar)
printf("\n The centroid of the given area is %.2f mm",Y_bar)
//Answer given in the textbook is wrong.

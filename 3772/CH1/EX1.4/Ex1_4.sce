// Problem 1.4,Page no.10


clc;clear;
close;


a_1=36*%pi //cm**2  //Area of Quadrant of a circle
x_1=16/%pi //cm  
y_1=16*%pi**-1 //cm


a_2=18*%pi //cm**2  //Area of the semicircle
x_2=6 //cm
y_2=8*%pi**-1 //cm


//Calculation-1

X_bar=(a_1*x_1-a_2*x_2)*(a_1-a_2)**-1 //cm

//Calculation-2
//To calculate Y_bar,taking AB as the Reference line

Y_bar=(a_1*y_1-a_2*y_2)*(a_1-a_2)**-1 //cm

//Result

printf("The centre of gravity is %.2f cm",X_bar)
printf("\n The centre of gravity is %.2f cm",Y_bar)

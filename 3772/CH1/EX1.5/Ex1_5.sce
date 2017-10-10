// Problem 1.5,Page no.11


clc;clear;
close;

//Circle-1 
a_1=100*%pi //cm**2
x_1=10 //cm
    
//Square-2 
a_2=50 //cm**2
x_2=15 //cm
    
//Calculation

X_bar=(a_1*x_1-a_2*x_2)*(a_1-a_2)**-1 //cm


//Result
printf("The centre of gravity is %.2f cm",X_bar)

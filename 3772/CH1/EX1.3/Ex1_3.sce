// Problem 1.3,Page no.10

clc;clear;
close;

//Area-1
a_1=93.75 //cm**2 
y_1=6.25 //cm

//Area-2
a_2=93.75 //cm**2 
y_2=6.25 //cm

//Area-3
a_3=375 //cm**2   
y_3=9.375 //cm

//Area-4
a_4=353.43 //cm**2
y_4=6.366 //cm


//Calculation

Y_bar=(a_1*y_1+a_2*y_2+a_3*y_3-a_4*y_4)*(a_1+a_2+a_3-a_4)**-1 //cm


//Result
printf("The centre of gravity lies at a distance of %.2f cm",Y_bar)

// Problem 1.2,Page No.9


clc;clear;
close;

//Area-1
a_1=6 //cm**2 
x_1=3 //cm
y_1=0.5 //cm

//Area-2
a_2=6 //cm**2
x_2=2.671 //cm
y_2=3 //cm

//Area-3
a_3=16 //cm**2
x_3=1 //cm
y_3=5 //cm


//Calculation


X_bar=(a_1*x_1+a_2*x_2+a_3*x_3)*(a_1+a_2+a_3)**-1 //cm
Y_bar=(a_1*y_1+a_2*y_2+a_3*y_3)*(a_1+a_2+a_3)**-1 //cm


//Result
printf("The centre of gravity of section is %.2f cm",X_bar)
printf("\n The centre of gravity of section is %.2f cm",Y_bar)

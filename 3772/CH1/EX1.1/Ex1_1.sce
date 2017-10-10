// Problem 1.1,Page No.8


clc;clear;
close;

//Rectangle-1
a_1=37.5 //cm**2    
y_1=26.25 //cm      

//Rectangle-2
a_2=50   //cm**2   
y_2=15   //cm      

//Rectangle-3
a_3=150  //cm**2    
y_3=2.5  //cm      


//Calculation


Y_bar=(a_1*y_1+a_2*y_2+a_3*y_3)*(a_1+a_2+a_3)**-1 //cm  

//Result
printf("The centroid of the section is %.2f cm",Y_bar)

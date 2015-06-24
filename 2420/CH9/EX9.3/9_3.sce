clc
clear
//Initialization of variables
h=3/12 //ft
gam=63.4 //lb per cu ft
gam2=0.075 //lb per cu ft
//calculations
P=h*gam
h2=P/gam2
//results
printf("Air height required = %d ft of air",h2)
disp("The answer is a bit different due to roundoff error in textbook.")

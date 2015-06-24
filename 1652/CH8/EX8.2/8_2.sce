clc
//Initialization of variables
P=1.0132*10^6 //dynes/cm^2
A=100 //cm^2
z=10 //cm
//calculations
w=P*A*z*10^-7
cal=w/4.184
//results
printf("Calories = %.3f cal",cal)

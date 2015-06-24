//Chapter 1,Example 1.1 Page 51
clc
clear
I = 600 // micor amps
x = 0.5 // distance in cm
V = 10 // kV
I2 = 60 // micro amps
x2 = 0.1 // distance in cm 
//Calculation 600 = I0*exp(0.5*alpha) and 60 = I0*exp(0.1*alpha)
alpha = log(600/60)/(0.5-0.1)
printf("Townsends first ionising coefficient = %f ionizing collisions/cm", alpha)

//Answers may vary due to round of error  


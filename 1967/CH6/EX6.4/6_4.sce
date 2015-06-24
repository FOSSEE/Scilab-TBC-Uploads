clc
//initialisation of variables
clear
h= 1.439
T= 300 //K
w= 4405 //cm^-1
w1= 565 //cm^-1
//CALCULATIONS
Qv1= (1-%e^(-h*w/T))^-1
Qv2= (1-%e^(-h*w1/T))^-1
//RESULTS
printf ('Vibrational Partition = %.3f ',Qv1)
printf ('\n Vibrational Partition = %.3f ',Qv2)

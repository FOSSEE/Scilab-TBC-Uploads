clc
//initialisation of variables
B= 5 //ft
H= 0.75 //ft
k= 0.2/0.45
Q1= 16.2 //ft^3/sec
B1= 5 //ft
H1= 0.51 //ft
//CALCULATIONS
A= (Q1+H1*k)/B1
C= k/A
Q= A*(B-C*H)*H^1.5
//RESULTS
printf (' Discharge flow rate = %.2f ft^3/sec',Q)

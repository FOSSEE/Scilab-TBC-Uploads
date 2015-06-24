clc
//Initialization of variables
L = 2 //ft
b1= 0.8 //ft
b2 = 0.6 //ft
A1 = 1.8 //ft^2
A3 = 1.8 //ft^2
n1 = 0.020
n2 = 0.015
n3 = 0.030
// Calculations
A2 = L*(b1+b2) //ft^2
P2 = L + 2*b1 //ft
R2 = A2/P2
R1 = A1/P2
R3 = A3/P2
Qt = 1.49*(0.002^0.5)*((A1*(R1^(2/3)))/(n1) + (A2*(R2^(2/3)))/(n2) + (A3*(R3^(2/3)))/(n3)) 
// results
printf(" the total flow rate is %.2f ft^3/s",Qt)

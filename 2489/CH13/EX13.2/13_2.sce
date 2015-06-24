clc
//Intitalisation of variables
clear
m= 1.9768 //gms
M= 107.88 //gms
m1= 5.136 ///gms
M1= 74.56 //gms
x1= 100 //gms
x2= 3.65 //gms
M2= 122.93 //gms
//CALCULATIONS
n1= m/M
n2= m1/M1
n3= (x2/M1)*(M2-m1)/(x1-x2)
t= (n3-n2+n1)/n1
t1= 1-t
//RESULTS
printf ('number of g equiv of Ag deposited = %.5f ',n1)
printf ('\n number of g equiv of Ag deposited = %.5f ',n2)
printf ('\n number of g equiv of KCl deposited = %.5f g equiv of KCl',n3)
printf ('\n transference number = %.3f ',t1-0.003)

clc
//initialisation of variables
clear
I= 0.459*10^-40 //g cm^2
k= 1.38*10^-16
T= 300 //K
h= 6.624*10^-27 //J/mol
I1= 245*10^-40 // g cm^2
//CALCULATIONS
Qr= I*k*T*8*%pi^2*0.5/h^2
Qr1= I1*k*T*8*%pi^2/h^2
//RESULTS
printf ('Rotational Partition = %.2f ',Qr)
printf ('\n Rotational Partition = %.f ',Qr1)

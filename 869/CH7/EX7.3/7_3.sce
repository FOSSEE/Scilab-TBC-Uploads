clc
//initialisation of variables
L= 5 //in
B= 12 //in
Ix= 227 //in^4
Iy= 10 //in^4
A= 10.2 //sq in
//CALCULATIONS
Kx= sqrt(Ix/A)
Ky= sqrt(Iy/A)
//RESULTS
printf ('Radius of gyration wrt x= %.2f in',Kx)
printf (' \n Radius of gyration wrt y=%.2f in',Ky)

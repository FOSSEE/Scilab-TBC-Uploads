clc
//initialisation of variables
W1= 7000 //lb
W2= 1000 //lb
W3= 3000 //lb
x1= 6 //in
x2= 9 //in
x3= 10 //in
x4= 5 //in
//CALCULATIONS
Rb= (W1*x1+W2*(x1+x2)+W3*(x1+x2+x3))/(x1+x2+x3+x4)
Ra= W1+W2+W3-Rb
//RESULTS
printf ('Rb= %.1f lb',Rb)
printf (' \n Ra=%.1f lb',Ra)

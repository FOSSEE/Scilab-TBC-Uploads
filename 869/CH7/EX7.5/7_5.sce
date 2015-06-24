clc
//initialisation of variables
H= 8 //in
b= 6 //in
d= 4 //in
H1= 5 //in
//CALCULATIONS
Ia1= ((b*H^3)/12)+b*H*d^2
Ia2= %pi*((d/2)^2)+%pi*((d/2)^2)*(H1)^2
I= Ia1-Ia2
//RESULTS
printf ('I= %.2f in^4',I)


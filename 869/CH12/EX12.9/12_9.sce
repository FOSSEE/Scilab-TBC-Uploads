clc
//initialisation of variables
M= 500000 //lb in
r= 15
n=3
b= 20 //in
l= 12 //in
As= 1 //in^2
//CALCULATIONS
At= r*As*n
x= (-2*At+sqrt((2*At)^2+8*At*b*l))/(2*l)
Ina= ((l*x^3)/3)+At*(b-x)^2
Scmax= M*x/Ina
Ssmax= r*M*(b-x)/Ina
//RESULTS
printf ('Maximum bending stress in concrete= %.3f psi',Scmax)
printf (' \n Maximum bending stress in steel= %.2f psi',Ssmax)

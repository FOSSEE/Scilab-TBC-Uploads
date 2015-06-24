clc
//initialisation of variables
Sc= 800 //psi
Ss= 18000 //psi
ratio= 15
d= 5/8 //in
l= 20 //in
b= 10 //in
//CALCULATIONS
x= Sc*ratio*l/(Ss+Sc*ratio)
As= b*x*(x/2)/((l-x)*ratio)
Ina= (b*x^3/3)+ratio*As*(l-x)^2
M= Sc*I/x
N= As/(%pi*(d/2)^2)
//RESULTS
printf ('Number of steel bars required= %.2f',N)
disp("it rounds to 6 bars")

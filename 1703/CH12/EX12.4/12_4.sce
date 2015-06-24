clc
//initialisation of variables
H2= 0.75 //ft
v1= 1 //ft/sec
v2= 6 //ft/sec
k= 1.433
//CALCULATIONS
H1= H2*(v1/v2)^(2/3)
Q1= k*H1^2.47
Q2= Q1*(H2/H1)^2.5
//RESULTS
printf ('Flow = %.3f cuses ',Q2 )

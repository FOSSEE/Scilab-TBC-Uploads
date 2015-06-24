//Initiization of variables
w=1500 //N/m
x=4 //m
L=4 //m
//Calculations
k=x^2/w //m^3/N
//Solving the intergral we get
W=L^3/(3*k) //N
x_bar=L^4/(4*k*W) //m
//Result
clc
printf("The resultant is %f N and the line of action of the force is %f m",W,x_bar)


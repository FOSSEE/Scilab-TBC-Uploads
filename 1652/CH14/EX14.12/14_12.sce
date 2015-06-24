clc
//Initialization of variables
disp("From table 14.3")
K1=-13.5089
K2=-22.9792
K3=19.2218
c=0.1 //m
//calculations
logK=K1-K2-K3
K=10^logK
mu=0.5*(c*1^2 + c*1^2)
disp("From tables 14-5 and 14-6,")
gAg=0.745
gCl=0.755
x2=K/(gAg*gCl)
x=sqrt(x2)
//results
printf("Solubility of Agcl = %.2e m",x)

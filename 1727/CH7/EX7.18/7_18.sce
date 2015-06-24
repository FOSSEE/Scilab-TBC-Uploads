clc
//Initialization of variables
Q=0.6 //m^3/s
l1=1200 //m
l2=800 //m
d1=0.3 //m
//calculations
V1=1.02 //m/s
d5= d1*l2*4^2 *Q^2 /(l1*%pi^2 *V1^2)
d=d5^(1/5)
//results
printf("diameter of the single pipe = %.2f m",d)

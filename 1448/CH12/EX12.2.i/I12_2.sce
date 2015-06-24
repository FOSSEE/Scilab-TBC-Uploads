clc
//Initialization of variables
k=516 //N/m
m=1.67*10^-27 //kg
//calculations
v=sqrt(k/m) /(2*%pi)
E=6.624*10^-34 *v
//results
printf("Separation between adjacent levels frequency, %.2e Hz",v)
printf("\n Energy = %.2e",E)

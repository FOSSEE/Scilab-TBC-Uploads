clc
//Initialization of variables
l1=63.6
l2=79.8
n=1 //mg/lt
we=116.7 //g/equiv
//calculations
l=l1+l2
c=n*10^-3 /we
k=c*l/1000
//results
printf("Specific conductance = %.2e ohm^-1 cm^-1",k)

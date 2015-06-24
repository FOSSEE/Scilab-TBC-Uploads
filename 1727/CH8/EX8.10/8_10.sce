clc
//Initialization of variables
Q=12 //m^3/s
n=0.023
A=2.472
b=0.472
sf=1/8000
//calculations
y8= Q*n/A *2^(2/3) /sf^(1/2)
y=y8^(3/8)
b2= b*y
//results
printf("depth = %.3f m",y)
printf("\n width = %.2f m",b2)

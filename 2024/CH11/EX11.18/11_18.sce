clc
//Initialization of variables
n1=8
n2=9
n3=47
h1=118
h2=104
h3=82.5
Q=2203279 //Btu
//calculations
U11=n1*h1+n2*h2+n3*h3
U12=U11+Q
T2=5271 //R
//results
printf("Upon interpolating, T2 = %d R",T2)

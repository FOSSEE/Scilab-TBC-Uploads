clc
//Initialization of variables
p2=169
p1=363
t1=410
t2=880
//calculations
ndash=(log(t2) - log(t1))/(log(p1) - log(p2))
n=ndash+1
//results
printf("Order of the reaction = %.2f",n)

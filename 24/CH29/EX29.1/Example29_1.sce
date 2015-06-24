//Given that
B = 1.2*10^-3  //in T
e = 1.6*10^-19  //in C
K = 5.3*10^6*e  //in J
m = 1.6*10^-27  //in kg

//Sample Problem 29-1
printf("**Sample Problem 29-1**\n")
v = sqrt(2*K/m)
F = e*v*B
printf("The magnitude of magnetic force acting on the proton is %eN", F)
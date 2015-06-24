//Given that
h = 2.1*10^-2  //in m
w = 1.2*10^-2  //in m
n = 250
B = 0.23  //in T
i = 100*10^-6  //in A
theta = 28  //in degree

//Sample Problem 29-7
printf("**Sample Problem 29-7**\n")
A = h*w
T = B*i*n*A
k = T/theta
printf("The value of constant k is equal to %eN.m/degree", k)
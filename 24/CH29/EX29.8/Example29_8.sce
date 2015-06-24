//Given that
n = 250
A = 2.52*10^-4  //in m^2
i = 100*10^-6  //in A
B = 0.85  //in T

//Sample Problem 29-8
printf("**Sample Problem 29-8**\n")
mu = n*i*A
U1 = -mu*B*cos(%pi/2)
U2 = -mu*B*cos(0)
W = U1 - U2
printf("Work done is equal to %eJ", W)
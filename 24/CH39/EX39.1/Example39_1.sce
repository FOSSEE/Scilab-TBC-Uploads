//Given that
P = 100  //in W
lambda = 590*10^-9  //in meter
h = 6.62*10^-34  //in J.s
c = 3*10^8  //in m/s

//Sample Problem 39-1
printf("**Sample Problem 39-1**\n")
Ep = h*c/lambda  //Energy of each photon
N = P/Ep
printf("The rate at which photons are absorbed is %1.2e/s", N)
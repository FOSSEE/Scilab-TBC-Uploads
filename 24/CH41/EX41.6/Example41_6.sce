//Given that
lambda = 550*10^-9  //in m
T = 300  //in K room temprature
h = 6.62*10^-34  //in J-s
c = 3*10^8  //in m/s
e = 1.6*10^-19
K = 8.62*10^-5*e

//Sample Problem 41-6a
printf("**Sample Problem 41-6a**\n")
deltaE = h*c/lambda
ratio = %e^(-(deltaE)/(K*T))
printf("The ratio is equal to %e\n", ratio)

//Sample Problem 41-6b
printf("\n**Sample Problem 41-6b**\n")
ratio = 0.5
T = -deltaE/K/log(ratio)
printf("The temprature required for the given ratio is equal to %fK", T)
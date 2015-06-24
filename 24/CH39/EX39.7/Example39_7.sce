//Given that
conv = 1.6*10^-19  //ev to J conversion factor
E = 5.1*conv  //in ev
Uo = 6.8*conv  //in ev
L = 750*10^-12  //in m
h = 6.62*10^-34  //in J.s
Me = 9.11*10^-31  //in kg

//Sample Problem 39-7a
printf("**Sample Problem 39-7a**\n")
k = sqrt(8*%pi^2*Me*(Uo-E)/h^2)
T = %e^(-2*k*L)
printf("The transmission coefficient is %e", T)
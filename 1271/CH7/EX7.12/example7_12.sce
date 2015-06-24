clc 
// Given that
x = 0.1 // compression in spring in m
F = 10 // restoring force in N
m = 4 // mass of body in kg
g = 9.8 // acceleration due to gravity in m/sec^2
// Sample Problem 12 on page no. 7.26
printf("\n # PROBLEM 12 # \n")
k = F / x
F_ = m * g
x_ = F_ / k
T = (2 * %pi) * sqrt(m / k)
printf("\n Standard formula used \n k = F / x. \n F_ = m * g. \n x_ = F_ / k. \n T = (2 * pi) * sqrt(m / k). \n ")
printf("\n Time period of motion = %f sec. \n Compression of the spring due to the weight of the body = %f m. ",T,x_)



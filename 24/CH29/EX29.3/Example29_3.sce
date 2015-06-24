//Given that
B = 80*10^-3  //in T
V = 1000.0  //in V
q = 1.6022*10^-19  //in C
x = 1.6254  //in m
conv = 1.6605*10^-27  //in kg/u

//Sample Problem 29-3
printf("**Sample Problem 29-3**\n")
m = poly(0, 'm')
r = x/2
//r = m*v/(q*B)
//v  = q*B*r/m
m = 0.5*(q*r*B)^2/V/q
printf("The mass of the particle is %ekg", m)
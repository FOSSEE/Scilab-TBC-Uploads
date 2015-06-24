exec('Gravitation.sci', -1)

//Given that
density = 3.5*10^3  //in kg/m^3
c = 3*10^8  //in m/s
d = 1  //(say)
Ps = 3.9*10^26  //in W

//Sample Problem 34-2
printf("**Sample Problem 34-2**\n")
R = poly(0, 'R')
A = %pi*R^2
Ad = 4*%pi*d^2
I = Ps/Ad
Fr = I*A/c
V = 4/3*%pi*R^3
m = density*V
Fg = GForce(m, Ms, d)
R = roots(Fr-Fg)
printf("The radius of the dust particle is %1.3em", R(1))
exec('degree_rad.sci', -1)

//Given that
e = 1.6*10^-19
K = 22.5*e  //in J
B = 4.55*10^-4  //in T
theta = dtor(65.5)
m = 9.11*10^-31  //in kg

//Sample Problem 29-4
printf("**Sample Problem 29-4**\n")
q = e
v = sqrt(2*K/m)
r = m*v*sin(theta)/(q*B)
T = 2*%pi*r/(v*sin(theta))
p = v*cos(theta)*T
printf("The pitch of the electron is equal to %fm", p)
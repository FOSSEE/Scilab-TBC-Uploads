exec('collision.sci', -1)

//Given that
m1 = 30*10^-3  //in kg
h1 = 8*10^-2  //in m
m2 = 75*10^-3  //in kg
g = 9.8  //in m/s^2
e = 1

//Sample Problem 10-4
printf("**Sample Problem 10-4**\n")
//velocity just before collision
Vi = zeros(1,2)
Vi(1) = sqrt(2*g*h1)
Vi(2) = 0
Vf= fsolve([0,0], collision)
printf("The velocity of m1 after collision is %fm/s", abs(Vf(1)))
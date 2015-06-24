// Initilization of variables
a=10 // m/s^2 // acceleration of the particle
S_5th=50 // m // distance travelled by the particle during the 5th second
t=5 // seconds
// Calculations
// The distance travelled by the particle in time t is given by, S=(u*t)+(1/2)*a*t^2.....(consider this as eq'n 1)
// Here, The distance travelled by the particle in the 5th second=The distance travelled in 5 seconds - The distance travelled in 4 seconds..... (consider eq'n 2)
// Using eq'n 1: S_(0-5)=(5*u)+(1/2)*10*5^2 = 5*u+125.....(consider eq'n 3)
// again, S_(0-4)=(4*u)+(1/2)*10*4^2 = 4*u+80....(consider eq'n 4)
// Now,put eq'n 3&4 in eq'n 2 and solve for u. We get, 50=[(5*u+125)-(4*u+80)] i.e 50=u+45
u=(S_5th)-45 // m/s
// Calculations
clc
printf('The initial velocity of the particle is %f m/s \n',u)

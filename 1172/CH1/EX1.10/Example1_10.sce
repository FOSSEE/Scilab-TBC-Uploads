clc
//Given that
t = 5e-5 // thickness of soap film in cm 
theta = 35 // angle of view in degree
mu = 1.33 // refractive index of soap film 
// sample problem 10 page No. 50
printf("\n # Problem 10 # \n")
a = 0
printf("Standard formula used \n\t 2*mu*t*cos(r) = n*lambda ")
r = asin (sin(theta * %pi /180) / mu)
for n = 1:3
    lambda = 2 * mu * t * cos(r) / n
    if lambda > t then
        a = a + 1
    end
end
printf (" \n\n The lowest order n = %d will be absent in visible region.",a)

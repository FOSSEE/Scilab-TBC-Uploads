exec('Example17_1.sce', -1)
clc

//Sample Problem 17-2a
printf("\n\n**Sample Problem 17-2a**\n")
v = numdiff(list(wave, 22.5*10^-2), 18.9)
printf("The velocity of the particle is %fm/s\n", v)

//Sample Problem 17-2b
printf("\n**Sample Problem 17-2b**\n")
dx = 0.001
a = (numdiff(list(wave, 22.5*10^-2), 18.9+dx) - numdiff(list(wave, 22.5*10^-2), 18.9))/dx
printf("The acceleration of the particle is %fm/s^2", a)
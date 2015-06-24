//Given that
funcprot(0)
deff('[y] = wave(t, x)', 'y = 0.00327*sin(72.1*x - 2.72*t)')
//Comparing the given equation with the standard wave equation
A = 0.00327  //in m
k = 72.1  //in rad/s
w = 2.72  //in rad/s

//Sample Problem 17-1a
printf("**Sample Problem 17-1a**\n")
printf("The amplitude of the wave is %fm\n", A)

//Sample Problem 17-1b
printf("\n**Sample Problem 17-1b**\n")
lambda = 2*%pi/k
printf("  wavelength = %fm\n", lambda)
T = 2*%pi/w
printf("  period     = %fs\n",T)
f = 1/T
printf("  frequency  = %fHz\n", f)

//Sample Problem 17-1c
printf("\n**Sample Problem 17-1c**\n")
v = w/k
printf("The velocity of the wave is %fm/s\n", v)

//Sample Problem 17-1d
printf("\n**Sample Problem 17-1d**\n")
y = wave(18.9, 22.5*10^-2)
printf("Displacement of the wave is %fm", y)
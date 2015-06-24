//Given that
m = 680*10^-3  //in kg
k = 65  //in N/m
x = 11*10^-2  //in meter

//Sample Problem 16-1a
printf("**Sample Problem 16-1a**\n")
w = sqrt(k/m)
f = 2*%pi/w
T = 1/f
printf("  Angular Frequency  -  %f rad/s\n", w)
printf("  Frequency\t     -  %f Hz\n", f)
printf("  Time Period\t     -  %f s\n", T)

//Sample Problem 16-1b
printf("\n**Sample Problem 16-1b**\n")
A = x
printf("The amplitude of oscillation is %fcm\n", A*100)

//Sample Problem 16-1c
printf("\n**Sample Problem 16-1c**\n")
Vmax = A*w
printf("The maximum speed of the block is %fm/s\n", Vmax)

//Sample Problem 16-1d
printf("\n**Sample Problem 16-1d**\n")
aMAX = Vmax*w
printf("The maximum acceleration of the block is %fm/s^2\n", aMAX)

//Sample Problem 16-1e
printf("\n**Sample Problem 16-1e**\n")
//at t=0 x = A
phi = acos(x/A)
printf("The phase constant for the SHM x=Acos(w*t+phi) is 2*n*pi + %d where n is an integer", phi)
clc
//Given that
r1 = 1.5e8 // distance of Earth from Sun in km
t1 = 1 // let 
// sample problem 12 page No. 305
printf ("\n\n\n # Problem 12 # \n")

printf ("\n Standard formula used T^2 = k* r^3")
t2 = 29.5 * t1// calculation of time period of Saturn
r2 = r1 * (t2 / t1) ^ (2/3) //calculation of distance of stern from Sun

printf (" \n Distance of Saturn from Sun is %e km .", r2)


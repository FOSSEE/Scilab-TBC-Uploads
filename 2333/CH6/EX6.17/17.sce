clc 
// Given that
l = 8 // length of fiber in kilo meter
mu1 = 1.50 // refractive index for core
delta = 2/100 // relative refractive index
c = 3e8 // speed of light in m/sec
// Sample Problem 17 on page no. 285
printf("\n # PROBLEM 17 # \n")
t = l*1e3*mu1*delta/c * 1e9
sigma = t/(2*sqrt(3))
BT_max = 1/(2*t) // 
Length = BT_max*1e3*l

printf("\n Time taken by light pulse is %f nsec. \n RPM pulse is %f nsec",t,sigma)
printf("\n Maximum bit rate is %f M bit/sec \n Bandwidth length product is %dMHz km", BT_max*1e3,Length)

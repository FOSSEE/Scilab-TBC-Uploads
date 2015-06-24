//Given that
lp1 = 499.8*10^-9  //in meter
lp2 = 501.6*10^-9  //in meter
c = 3*10^8  //in m/s
Ms = 1.99*10^30  //in kg
G = 6.67*10^-11  //in SI unit
R = 100  //in light year
conv = 9.46*10^15  //conversion factor from light year to sec

//Sample Problem 38-5a
printf("**Sample Problem 38-5a**\n")
lo = lp1 + lp2
lo = lo/2
deltaL = abs(lp1 - lo)
v = deltaL/lo * c
printf("The speed of gas relative to us is %1.2em/s\n", v)

//Sample Problem 38-5b
printf("\n**Sample Problem 38-5b**\n")
//G*M*m/r^2 = m*v^2/r
r = R*conv
M = v^2*r/G
ratio = M/Ms
printf("The mass of galaxy is %1.2e*Ms", ratio)
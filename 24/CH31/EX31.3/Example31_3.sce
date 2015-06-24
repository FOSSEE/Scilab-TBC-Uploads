//Given that
t = poly(0, 't')
//B = 4*t^2*x^2
W = 3.0  //in meter
H = 2.0  //in meter
t1 = 0.10  //in sec

//Sample Problem 31-3
printf("**Sample Problem 31-3**\n")
flux = integrate('4*x^2*H', 'x', 0, W)
E = derivat(flux*t^2)
E1 = horner(E, t1)
printf("The induced emf is equal to %fV", E1)
//Given that
M = 1  //(say)to get the answer directly
Vi = 2100  //in km/h
//initial momentum
Pi = M* Vi
Vrel = 500  //in km/h

//Sample Problem 9-6
printf("**Sample Problem 9-6**\n")
//Assuming Vf as the final velocity of the hauler
Vf = poly(0, 'Vf')
Pf = 0.20*M*(Vf - Vrel) + (M - 0.20*M)*Vf
p = Pi - Pf
Vf = roots(p)
printf("The final velocity of the hauler is %dkm/h", Vf)
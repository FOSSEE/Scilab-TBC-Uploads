//Given that
L = 53*10^-3  //in H
R = 0.35  //in Ohm
V = 12  //in Volts

//Sample Problem 31-7a
printf("**Sample Problem 31-7a**\n")
i = V/R  //in steady state
E = 1/2*L*i^2
printf("The Energy stored in the inductor in steady state is %fJ\n", E)

//Sample Problem 31-7b
printf("\n**Sample Problem 31-7b**\n")
Et = E/2
//hence It = Io/sqrt(2)
f = log(1-1/sqrt(2))  //the number of times of time constant
printf("After t=%1.1fT, the energy stored in the inductor will be half of tis steady state value", f)
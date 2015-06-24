//Given that
E1 = 4.4  //in Volts
E2 = 2.1  //in olts
r1 = 2.3  //in Ohm
r2 = 1.8  //in Ohm
R = 5.5  //in Ohm

//Sample Problem 28-1a
printf("**Sample Problem 28-1a**\n")
i = poly(0, 'i')
p = E1 - E2 - i*r2 - i*R - i*r1
i = roots(p)
printf("The current in the circuit is equal to %fA\n", i)

//Sample Problem 28-1b
printf("\n**Sample Problem 28-1b**\n")
Ve1 = E1 - i*r1
printf("The potential difference between the terminal of the battery is equal to %fV", Ve1)
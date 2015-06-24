//Given that
L = 100*10^-12  //in m

//Sample Problem 40-3a
printf("**Sample Prblem 40-3a**\n")
P = integrate('2/L*(sin(%pi/L*x))^2', 'x', 0, L/3)
printf("The probability is equal to %1.2f\n", P)

//Sample Problem 40-3b
printf("\n**Sample Prblem 40-3b**\n")
P = integrate('2/L*(sin(%pi/L*x))^2', 'x', L/3, 2*L/3)
printf("The probability is equal to %1.2f\n", P)
exec('quantum.sci', -1)

//Given that
L = 100*10^-12  //in m
Uo = 450*conv  //in ev
l = 2*10^-9  //in m

//Sample Problem 40-4a
printf("**Sample Prblem 40-4a**\n")
E1 = Ediff(1, 0, Me, L)
E = Uo - E1
lambda = wavelength(E)
printf("The wavelength of the free electron is %1.2fnm\n", lambda*10^9)

//Sample Problem 40-4b
printf("\n**Sample Prblem 40-4b**\n")
E2 = Energy(l)
K = E2 - E
printf("The electron energy is %1.2fev", K/conv)
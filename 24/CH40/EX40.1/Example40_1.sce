exec('quantum.sci', -1)

//Given that
L = 100*10^-12  //in m

//Sample Problem 40-1a
printf("**Sample Prblem 40-1a**\n")
n = 1  //for min energy
Emin = Ediff(n, 0, Me, L)
printf("The least possible energy is %1.2fev\n", Emin/conv)

//Sample Problem 40-1b
printf("\n**Sample Prblem 40-1b**\n")
n2 = 3
n1 = 1
deltaE13 = Ediff(n2, n1, Me, L)
printf("The energy to be transferred is %1.2fev\n", deltaE13/conv)

//Sample Problem 40-1c
printf("\n**Sample Prblem 40-1c**\n")
lambda = wavelength(deltaE13)
printf("The wavelength of photon is %1.2fnm\n", lambda*10^9)

//Sample Problem 40-1d
printf("\n**Sample Prblem 40-1d**\n")
deltaE12 = Ediff(2, 1, Me, L)
lambda1 = wavelength(deltaE12)
deltaE23 =  Ediff(3, 2, Me, L)
lambda2 = wavelength(deltaE23)
printf("The possible wavelength of photon is :\n")
printf("\t %1.2fnm\n", lambda*10^9)
printf("\t %1.2fnm\n", lambda1*10^9)
printf("\t %1.2fnm", lambda2*10^9)
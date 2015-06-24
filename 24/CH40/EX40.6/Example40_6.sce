exec('quantum.sci', -1)

//Sample Problem 40-6a
printf("**Sample Prblem 40-6a**\n")
//lyman series : least energetic photon => 2 to 1 transition
deltaE21 = -(13.6) * (1/2^2 - 1/1^2)*conv
lambda = wavelength(deltaE21)
printf("The wavelength of the least energetic photon in lyman series is %1.2fnm\n", lambda*10^9)

//Sample Problem 40-6b
printf("\n**Sample Prblem 40-6b**\n")
//lyman series limit  => 1 to infinity transition
deltaE = -(13.6) * (0 - 1/1^2)*conv
lambda = wavelength(deltaE)
printf("The wavelength of the lyman series limit is %1.2fnm\n", lambda*10^9)
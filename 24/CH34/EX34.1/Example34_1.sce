//Given that
d = 1.8  //in meter
P = 250  //in W
c = 3*10^8  //in m/s
mu = 4*%pi*10^-7  //in SI unit

//Sample Problem 34-1
printf("**Sample Problem 34-1**\n")
Erms = sqrt(P*c*mu/(4*%pi*d^2))
Brms = Erms/c
printf("The rms value of electric field is equal to %1.2eV/m\n", Erms)
Brms = printf("The rms value of magnetic field is equal to %1.2eT", Brms)
//Given that
K = 2.53  //in Mev
Me = 9.109*10^-31  //in kg
c = 3*10^8  //in m/s
conv = 1.6*10^-19*10^6  //Mev to joule conversion factor

//Sample Problem 38-6a
printf("**Sample Problem 38-6a**\n")
Eactual = Me*c^2/conv + K
printf("The actual energy of the elctron is %1.2fMev\n", Eactual)

//Sample Problem 38-6b
printf("\n**Sample Problem 38-6b**\n")
p = sqrt(Eactual^2 - (Me*c^2))
printf("The momentum of the electron is %1.2fMev/c", p)
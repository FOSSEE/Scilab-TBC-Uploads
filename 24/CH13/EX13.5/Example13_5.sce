//Given that
R = 9.5*10^-3  //in meter
L = 81*10^-2  //in meter
F = 62*10^3  //in N
Y = 2*10^11  //in N/m^2

//Sample Problem 13-5
printf("**Sample Problem 13-5**\n")
//From the definition of stress, strain & hook's law
sigma = F/(%pi*R^2)
strain = sigma/Y
deltaL = strain*L
printf("The stress in the rod is %en/m^2\n", sigma)
printf("The strain in the rod is %e\n", strain)
printf("The elongation in the rod is %em", deltaL)
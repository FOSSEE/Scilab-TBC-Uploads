// chapter 7 , Example7.3 , pg 208
Nd=10^14     //Donor density   (in atoms/cm^3)
e=1.6*10^-19     //electronic charge of electron   (in C)
Un=3900      // electron mobility (in cm^2/(V*s))     for Ge at 300 K
sigma=Nd*e*Un     //conductivity
rho=1/sigma       //resistivity
printf("Resistivity=\n")
printf("rho=%.2f    ohm*cm",rho)

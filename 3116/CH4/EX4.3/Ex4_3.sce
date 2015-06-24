

clc
// given that
R=1.28D-08//Atomic radius in cm
A_Cu=63.5 //Atomic wt of copper
n=4   //For FCC
Na=6.023D23 //Avogadro no.
printf("Example 4.3\n")

a=2*R*sqrt(2)
Vc=a^3
rho=n*A_Cu/(Vc*Na)
printf("\n Density of copper is %.2f g/cm^3.\n",rho)


//Chapter-5,Example5_15_1,pg 5-41

//En=(n^2*h^2)/(8*m*e*L^2)            n=1,2,3,....

e=1.6*10^-19                                                 //charge of an electron

h=6.63*10^-34                                                //Plancks constant

m=9.1*10^-31                                                 //mass of an electron

L=2*10^-10                                                   //width

E1=h^2/(8*m*e*L^2)                                           //For ground state n=1

printf("\nThe energy of an electron in ground state  E1 = %.2f eV\n",E1)

E2=4*E1                                                      //For first excited state n=2

printf("\nThe energy of an electron in ground state  E2 = %.2f eV\n",E2)

E3=9*E1                                                      //For second excited state n=3

printf("\nThe energy of an electron in ground state  E3 = %.2f eV\n",E3)


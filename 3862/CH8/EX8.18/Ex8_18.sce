clear
//variable declaration

G=(0.4*100000)      //modulus of rigidity of material,N/mm^2
K=(0.8*100000)      //bulk modulus,N/mm^2

E=(9*G*K)/(3*K+G)


printf("\n Youngs modulus= %0.3f  N",E)

pr=(E/(2*G))-1

printf("\n Poissons Ratio %0.4f  ",pr)

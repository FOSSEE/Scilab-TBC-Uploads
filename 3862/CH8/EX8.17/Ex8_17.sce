clear
//variable declaration

E=(2.1*100000)         //Young’s modulus of the material,N/mm^2
G=(0.78*100000)        //modulus of rigidity,N/mm^2

pr=(E/(2*G))-1

printf("\n poissons Ratio= %0.3f  ",pr)

K=E/(3*(1-2*pr))

printf("\n Bulk modulus= %0.3f  N/mm^2",K)

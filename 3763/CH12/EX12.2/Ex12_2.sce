clear
//
//
//

//Variable declaration
E=70*10**9     //young's modulus(Pa)
gama=1     //surface energy(joule/m**2)
C=1*10**-6    //depth(m)

//Calculation
sigma_f=sqrt(2*E*gama/(%pi*C))      //fracture strength(GPa)

//Result
printf("\n fracture strength is %0.3f  GPa",sigma_f/10**9)

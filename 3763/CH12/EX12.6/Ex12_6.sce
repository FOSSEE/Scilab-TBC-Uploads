clear
//
//
//

//Variable declaration
E=35*10**10     //youngs modulus(Pa)
gama=2     //specific surface energy(J/m**2)
C=2*10**-6    //length(m)
x=17700    
y=2.1
z=31.25

//Calculation
sigma_f=sqrt(2*E*gama/(%pi*C))     //fracture stress(Pa)
T=x/((sigma_f/(9.8*10**6))-y+z)    //transition temperature(K)

//Result
printf("\n transition temperature is %0.0f  K",T)

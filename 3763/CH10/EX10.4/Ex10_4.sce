clear
//
//
//

//Variable declaration
eta=0.6     //quantum efficiency
q=1.6*10**-19    //charge(coulomb)
lamda=1.3*10**-6    //lamda(m)
h=6.625*10**-34       //plancks constant(J s)
c=3*10**8     //velocity of light(m/s)

//Calculation
R=eta*q*lamda/(h*c)     //responsibility(A/W)

//Result
printf("\n responsibility is %0.3f  A/W",R)

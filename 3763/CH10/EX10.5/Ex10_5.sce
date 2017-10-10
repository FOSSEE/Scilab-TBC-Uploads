clear
//
//
//

//Variable declaration
eta=0.7     //quantum efficiency
q=1.6*10**-19    //charge(coulomb)
lamda=863*10**-9    //lamda(m)
P0=0.5*10**-6     //optical power(W)
h=6.625*10**-34       //plancks constant(J s)
c=3*10**8     //velocity of light(m/s)
IT=10*10**-6    //current(A)

//Calculation
IP=eta*q*lamda*P0/(h*c)
M=IT/IP       //multiplication factor

//Result
printf("\n multiplication factor is %0.3f  ",M)

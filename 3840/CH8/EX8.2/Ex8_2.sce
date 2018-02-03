clear
//
//
//

//Variable declaration
e=1.6*10**-19    //charge(c)
mew_n=0.3        //electron mobility(m**2/Vs)
rho=0.25         //resistivity(ohm m)

//Calculation
n=1/(rho*e*mew_n)    //number of donor atoms per m**3

//Result
printf("\n number of donor atoms is %0.3f  *10**19 per m**3",n/10**19)

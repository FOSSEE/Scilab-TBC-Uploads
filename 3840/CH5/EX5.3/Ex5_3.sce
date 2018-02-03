clear
//
//
//

//Variable declaration
rho=1.54*10**-8      //resistivity(ohm m)
n=5.8*10**28         //number of electrons
e=1.602*10**-19      //charge(c)
m=9.11*10**-31       //mass(kg)

//Calculation
tow=m/(n*e**2*rho)    //relaxation time(s)

//Result
printf("\n relaxation time is %0.3f  *10**-15 s",tow*10**15)
printf("\n answer in the book varies due to rounding off errors")

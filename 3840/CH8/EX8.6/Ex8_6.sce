clear
//
//
//

//Variable declaration
e=1.6*10**-19    //charge(c)
mew_e=0.39       //electron mobility(m**2/Vs)
mew_h=0.19       //hole mobility(m**2/Vs)
ni=2.4*10**19    //intrinsic concentration(per m**3)

//Calculation
rhoi=1/(ni*e*(mew_e+mew_h))    //resistivity(ohm m)

//Result
printf("\n resistivity is %0.3f  ohm m",rhoi)

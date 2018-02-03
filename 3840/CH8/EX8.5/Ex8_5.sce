clear
//
//
//

//Variable declaration
e=1.6*10**-19    //charge(c)
mew_e=0.36       //electron mobility(m**2/Vs)
mew_h=0.17       //hole mobility(m**2/Vs)
rhoi=2.12        //resistivity(ohm m)

//Calculation
ni=1/(rhoi*e*(mew_e+mew_h))    //intrinsic concentration(per m**3)

//Result
printf("\n intrinsic concentration is %0.2f  *10**16 per m**3",ni/10**16)

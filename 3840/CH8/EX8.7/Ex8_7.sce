clear
//
//
//

//Variable declaration
ni=1.5*10**16     //charge carriers(per m**3)
e=1.6*10**-19     //charge(c)
mew_e=0.135       //electron mobility(m**2/Vs)
mew_h=0.048       //hole mobility(m**2/Vs)
N=10**23          //number of atoms(per m**3)

//Calculation
sigma=ni*e*(mew_e+mew_h)      
p=ni**2/N         //hole concentration(per m**3)    
sigman=N*e*mew_e  //conductivity(per ohm m)

//Result
printf("\n hole concentration is %0.3f  *10**9 per m**3",p/10**9)
printf("\n conductivity is %0.3f  *10**3 per ohm m",sigman/10**3)

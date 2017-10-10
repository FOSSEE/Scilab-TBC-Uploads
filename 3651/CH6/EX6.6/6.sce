//Variable declaration
ni=1.5*10**16
mu_n=1300*10**-4
mu_p=500*10**-4
e=1.6*10**-19
sigma=3*10**4

//Calculations
//Concentration in N-type
n1=sigma/(e*mu_n)
p1=ni**2/n1
//Concentration in P-type
p=sigma/(e*mu_p)
n2=(ni**2)/p

//Result
printf('a)Concentration in N-type\n ')
printf('n = %0.3f     *10**24 m**-3   \n',(n1*10**-24))
printf('Hence p = %0.3f     *10**8 m**-3   \n',(p1/10**8))
printf('b)Concentration in P-type\n')
printf('p = %0.3f      *10**24 m**-3  \n',(p/10**24))
printf('Hence n = %0.3f   *10**8 m**-3     \n',(n2/10**8))

//Variable declaration
ni=1.5*10**16
Nd=2*10**19
e=1.602*100**-19
mu_n=0.12

//Calculations
p=ni**2/Nd
E_c=e*Nd*mu_n

//Result
printf('The hole concentration p = %0.3f     *10**13 /m**3   \n',(p*10**-13))
printf('n= Nd = %0.3f     *10**19   \n',(Nd*10**-19))
printf('Electrical Conductivity = %0.3f      ohm**-1 m**-1  \n',(E_c*10**19))
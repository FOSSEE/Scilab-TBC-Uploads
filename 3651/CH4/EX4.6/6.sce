//Variable declaration
N=6.023*10**26                   //Avagadro number
D=8960                           //density  
F_e=1                            //no.of free electrons per atom     
W=63.54                          //Atomic weight
i=10
e=1.602*10**-19
m=9.1*10**-31
rho=2*10**-8
Cbar=1.6*10**6                   //mean thermal velocity(m/s)

//Calculations
n=(N*D*F_e)/W
A=%pi*0.08**2*10**-4
Vd=i/(A*n*e)                      //Drift speed
Tc=m/(n*(e**2)*rho)
lamda=Tc*Cbar

//Result
printf('n =%0.3f  *10**28 /m**3 \n ',(n/10**28))
printf('The drift speed Vd =%0.3f *10**-5 m/s  \n ',(Vd*10**5))
printf('The mean free collision time Tc =%0.3f  *10**-14 seconds \n ',(Tc*10**14))
printf('Mean free path =%0.3f *10**-8 m""(answer varies due to ing off errors)  \n ',(lamda*10**8)) 
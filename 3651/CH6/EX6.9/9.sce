//Variable declaration
ni=2.5*10**19
mu_e=0.38
mu_h=0.18
e=1.6*10**-19

//Calculations
sigmai=ni*e*(mu_e+mu_h)

//Result
printf('Conductivity of intrinsic germanium at 300K = %0.3f    ohm**-1 m**-1    \n',(sigmai))
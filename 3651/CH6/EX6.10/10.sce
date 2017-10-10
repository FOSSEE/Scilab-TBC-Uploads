//Variable declaration
m=9.1*10**-31
k=1.38*10**-23
T=300
h=6.626*10**-34
Eg=1.1
e=1.6*10**-19
mu_e=0.48
mu_h=0.013
//Calculations
ni=2*((2*%pi*m*k*T)/h**2)**(3/2)*exp(-(Eg*e)/(2*k*T))
sigma=ni*e*(mu_e+mu_h)
                                                  
//Result
printf('Conductivity = %0.3f    *10**-3 ohm**-1 m**-1   \n',(sigma*10**3))             
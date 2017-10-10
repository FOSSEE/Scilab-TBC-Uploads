
//Variable declaration
N=1/60
e=1.6*10**-19
ni=2.5*10**13
b=5*10**13
E=2

//Calculations
n=(b+sqrt(2*b**2))/2
mu_p=N/(3*e*ni)
mu_i=2*mu_p
np=ni**2
p=(ni**2)/n
e=1.6*10**-19
E=2
J=(e*E)*((n*mu_i)+(p*mu_p))
//Result
printf('mu_p= %0.3f   cm**2/V-s     \n',(mu_p))
printf('n= %0.3f     *10**13/cm**3   \n',(n/10**13))
printf('p= %0.3f     *10**13/cm**3   \n',(p*10**-13))
printf('J= %0.3f    A/m**2    \n',(J*10**4))
printf('//Answer varies due to ing of numbers')
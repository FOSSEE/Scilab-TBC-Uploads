
//Variable declaration
rho=47*10**-2
e=1.6*10**-19
mu_n=0.39
mu_p=0.19
E=10**4

//Calculations
ni=1/(rho*e*(mu_n+mu_p))
Dh=mu_p*E
De=mu_n*E

//Results
printf('ni = %0.3f     *10**19 /m**3   \n',(ni/10**19))
printf('Drift velocity of holes %0.3f   ms**-1  \n',Dh)
printf('Drift velocity of electrons= %0.3f    ms**-1 \n',De)
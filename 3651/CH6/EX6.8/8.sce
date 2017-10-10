//Variable declaration
Ev=0
Ec=1.12
k=1.38*10**-23
T=300
mh=0.28
mc=0.12
e=1.6*10**-19
//Calculations
Ef=((Ec+Ev)/2)+((3*k*T)/(4*e))*log(mh/mc)

//Result
printf('Position of fermi level = %0.3f     eV   \n',(Ef))
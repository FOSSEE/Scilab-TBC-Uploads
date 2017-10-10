//Variable declaration
e=1.6*10**-19
E=1                    //(V/m)
rho=1.54*10**-8
n=5.8*10**28
m=9.1*10**-31
//Calculations
T=m/(rho*n*e**2)
Me=(e*T)/m
Vd=Me*E

//Result 
printf('Relaxation time =%0.3f *10**-14 second  \n ',(T*10**14))
printf('Mobility =%0.3f  *10**-3 m**2/volt-s \n ',(Me*10**3))
printf('Drift Velocity=%0.3f m/s  \n ',(Vd*100))

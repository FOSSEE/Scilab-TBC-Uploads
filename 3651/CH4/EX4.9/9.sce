
//Variable declaration
rho_r=0
T=300
rho=1.7*10**-18

//Calculations 
a=rho/T
rho_973=a*973

//Results
printf('Temperature coefficient of resistivity,a =%0.3f   \n ',(a*10**21))
printf('rho_973 =%0.3f *10**-8 ohm-m  \n ',(rho_973*10**18))
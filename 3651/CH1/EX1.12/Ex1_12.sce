//variable declaration
r=0.123                  //Atomic radius
n=4
A=55.8                   //Atomic wt
a=2*sqrt(2) 
N=6.02*10**26           //Avagadro number

//Calculations
rho=(n*A)/((a*r*10**-9)**3*N)

//Result
printf('Density of iron =%0.3fkg/m**-3",rho)

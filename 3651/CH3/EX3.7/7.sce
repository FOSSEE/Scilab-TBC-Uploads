//Variable declaration
M=1.676*10**-27             //Mass of neutron
m=0.025
v=1.602*10**-19
h=6.62*10**-34

//Calculations
mv=(2*m*v)**(1/2)
lamda=h/(mv*M**(1/2))

//Result
printf('wavelength =%0.3f  Angstorm \n ',(lamda*10**10))
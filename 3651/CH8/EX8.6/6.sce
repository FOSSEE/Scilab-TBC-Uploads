//variable declaration
a=100
N_a=0.3               //Numerical aperture
lamda=850             //wavelength

//Calculations
V_n=(2*(%pi**2*a**2*10**-12*N_a**2)/lamda**2*10**-18)
//Result
printf('Number of modes =%0.3f modes\n',(V_n/10**-36))
printf('No.of modes is doubled to account for the two possible polarisations')
printf('Total No.of modes =%0.3f \n',(V_n/10**-36)*2)

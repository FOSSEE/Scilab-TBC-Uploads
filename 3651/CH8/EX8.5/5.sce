//variable declaration
a=5
n1=1.450
n2=1.447
lamda=1             //wavelength

//Calculations
N_a=(n1**2-n2**2)   //Numerical aperture

N=4.9*((a*10**-6*sqrt(N_a)/(lamda*10**-6))**2)

//Result

printf('maximum no.of modes propogating through fiber =%0.3f \n',(N))
printf('Correction needed')

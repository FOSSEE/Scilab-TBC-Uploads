//variable declaration
d=50                //diameter
n1=1.450
n2=1.447
lamda=1             //wavelength

//Calculations
N_a=(n1**2-n2**2)   //Numerical aperture
N=4.9*(((d*10**-6*N_a)/(lamda*10**-6))**2)

//Results
printf('Numerical aperture =%0.3f ',N_a)
printf('No. of modes that can be propogated =%0.3f \n',(N))
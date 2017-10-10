//variable declaration
d=50                //diameter
N_a=0.2             //Numerical aperture
lamda=1             //wavelength

//Calculations
N=4.9*(((d*10**-6*N_a)/(lamda*10**-6))**2)

//Result
printf('N =%0.3f \n',N)
printf('Fiber can support%0.3f guided modes \n',N)
printf('In graded index fiber, No.of modes propogated inside the fiber =%0.3f only',N/2)
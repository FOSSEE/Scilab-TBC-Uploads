//variable declaration
n1=1.50          //Core refractive index
n2=1.47          //Cladding refractive index

//Calculations
C_a=asin(n2/n1)        //Critical angle       
N_a=(n1**2-n2**2)**(1/2)
A_a=asin(N_a)

//Results
printf('The Critical angle =%0.3f degrees\n',(C_a*180/%pi))
printf('The numerical aperture =%0.3f \n',(N_a))
printf('The acceptance angle =%0.3f degrees\n',(A_a*180/%pi))
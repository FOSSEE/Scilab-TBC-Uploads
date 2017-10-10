//variable declaration
n1=1.53
delta=0.0196

//Calculations
N_a=n1*(2*delta)**(1/2)
A_a=asin(N_a)
//Result
printf('Numerical aperture =%0.3f \n',(N_a))
printf('Acceptance angle =%0.3f degrees \n',(A_a*180/%pi))

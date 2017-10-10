clear
//Given
a=0.1                 //m
A=800
e=8.854*10**-12

//Calculation
b=A*a**2.5*(sqrt(2)-1)
q=e*b

//Result
printf("\n (a) The flux through the cube is  %0.2f  Nm**2C-1",b)
printf("\n The charge within the cube is  %0.2f *10**-12 C",q*10**12)

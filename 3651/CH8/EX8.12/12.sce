//variable declaration
n1=1.5
n2=1.49
a=25

//Calculations
C_a=asin(n2/n1)           //Critical angle
L=2*a*tan(C_a)             
N_r=10**6/L                    

//Result
printf('Critical angle=%0.3f degrees\n',(C_a*180/%pi))
printf('Fiber length covered in one reflection=%0.3f micro m\n',(L))
printf('Total no.of reflections per metre=%0.3f \n',(N_r))
printf('Since L=1m, Total dist. travelled by light over one metre of fiber =%0.3f m \n',(1/sin(C_a)))

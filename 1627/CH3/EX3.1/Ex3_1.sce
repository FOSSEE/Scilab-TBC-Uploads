clc
//initialisation of variables
F=150//N
a1=25//m
A=(25)*(10^-6)//mm^2
a=100//mm^2
q=9.806//N/kgf
//CALCULATIONS
P=F/A//N/m^2
P1=F/((q)*A)//kgf/cm^2
F2=F*a/a1//N
F3=(F*a)/(q*a1)//kgf
//RESULTS
printf('The force on the larger piston in newtons and kilograms force is=% f kgf',F3)

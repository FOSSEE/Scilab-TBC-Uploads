clc
//initialisation of variables
A= 500 //cm^2
m= 0.106 //mg
N= 6*10^23 //molecules
M= 284 //g mole^-1
d= 0.85 //g/cm^3
//CALCULATIONS
A1= A*M/(N*m^10^-3)
t= m*10^-3/(A*d)
//RESULTS
printf ('cross-sectional area = %.e cm^2 ',A1)
printf ('\n thcikness t of the film = %.e cm ',t)

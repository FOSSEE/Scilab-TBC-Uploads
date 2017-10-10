//variable declaration
alpha=1.85
lamda=1.3*10**-6
a=25*10**-6
N_a=0.21

//Calculations
V_n=((2*%pi**2)*a**2*N_a**2)/lamda**2
N_m=(alpha/(alpha+2))*V_n

printf('No.of modes =%0.3f =155(approx)\n',(N_m))
printf('Taking the two possible polarizations, Total No.of nodes =%0.3f \n',(N_m*2))

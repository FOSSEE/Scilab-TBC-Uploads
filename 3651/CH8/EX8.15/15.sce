//variable declaration
L=10
n1=1.55
delta=0.026
C=3*10**5

//Calculations
delta_T=(L*n1*delta)/C
B_W=10/(2*delta_T)

//Result
printf('Total dispersion =%0.3f ns\n',(delta_T/10**-9))
printf('Bandwidth length product =%0.3f Hz-km\n',(B_W/10**5))
printf('//Answer given in the text book is wrong")

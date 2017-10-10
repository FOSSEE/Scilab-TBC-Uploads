//variable declaration
P_i=100
P_o=2
L=10

//Calculations
S=(10/L)*log(P_i/P_o)
O=S*L

//Result
printf('a.Signal attention per unit length =%0.3f dB km**-1\n',(S))
printf('b.Overall signal attenuation =%0.3f dB\n',(O))
printf('//Answer given in the textbook is wrong')

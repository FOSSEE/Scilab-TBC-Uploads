clc
//Given that
v = 300 // speed of electron in m/s
accuracy = 1e-4 // accuracy in speed
h = 6.6e-34 // Plank's constant
m_e = 9.1e-31 // mass of electron in Kg
//Sample Problem 13 page No. 140
printf("\n\n\n # Problem 13 # \n")
printf("\n Standard formula Used \n delta_p * delta_x >= h /(2*pi)")
del_p =  accuracy * m_e * v  //calculation of Uncertainty in  momentum
del_x = h / (4 * %pi * del_p)  //calculation of Uncertainty in position
printf ("\n Uncertainty in position of electron is %f mm. ", del_x*1000 )



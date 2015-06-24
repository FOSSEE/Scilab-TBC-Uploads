//Given that
a = 1.2*10^-3  //in meter
b = 3.5*10^-3  //in meter
i = 2.7  //in Amp
l = 1  //in meter(say)
uo = 4*%pi*10^-7

//Sample Problem 31-8
printf("**Sample Problem 31-8**\n")
B = uo*i/(2*%pi)  //divided by r
Ul = B^2/(2*uo)  //divided by r^2
//Energy as a funtion of r
U = Ul*2*%pi*l  //divided by r by r
Energy = integrate('U/r', 'r', a, b)
printf("Energy per unit length is equal to %1.2eJ/m", Energy)
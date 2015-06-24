//Given that
R = 200  //in Ohm
Em = 36  //in volts
fd = 60  //in Hz
t = poly(0, 't')
w = 2*%pi*fd
//V = Em*sin(w*t)

//Sample Problem 33-4a
printf("**Sample Problem 33-4a**\n")
//Vr = Emax*sin(w*t)
printf("The voltage drop across the resistor is Vr=%1.2f*sin(%1.2f*t)\n", Em, w)

//Sample Problem 33-4b
printf("\n**Sample Problem 33-4b**\n")
Ir = Em/R
printf("The current in the resistor as a function of time is Ir=%1.2f*sin(%1.2f*t)", Ir, w)
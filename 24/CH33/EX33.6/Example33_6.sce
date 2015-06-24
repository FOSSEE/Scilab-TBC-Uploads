//Given that
L = 230*10^-3  //in Farad
Em = 36.0  //in volts
fd = 60.0  //in Hz

//Sample Problem 33-6a
printf("**Sample Problem 33-6a**\n")
//Vc = Emax*sin(w*t)
printf("The voltage drop across the inductor is Vi=%1.2f*sin(%1.2f*t)\n", Em, w)

//Sample Problem 33-6b
printf("\n**Sample Problem 33-6b**\n")
//V = -L*(dI/dt)
IcMAX = abs(Em/(w*L))
printf("The current in the inductor as a function of time is Ic=-%1.2f*cos(%1.2f*t)", IcMAX, w)
//Given that
C = 15*10^-6  //in Farad
Em = 36.0  //in volts
fd = 60.0  //in Hz

//Sample Problem 33-5a
printf("**Sample Problem 33-5a**\n")
//Vc = Emax*sin(w*t)
printf("The voltage drop across the capacitor is Vc=%1.2f*sin(%1.2f*t)\n", Em, w)

//Sample Problem 33-5b
printf("\n**Sample Problem 33-5b**\n")
//I = -C*(dV/dt)
IcMAX = abs(w*C*Em)
printf("The current in the capacitor as a function of time is Ic=%1.2f*cos(%1.2f*t)", IcMAX, w)
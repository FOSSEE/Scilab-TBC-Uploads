//chspter5
//example5.2
//page85

mu=20
rp=10 // kilo ohm
Rl=15 // kilo ohm
Eg=3 // V

// the diagram in book is for understanding only. Also we do not have a block of "triode" in scilab xcos. The figure is not required to solve the problem.

Av=mu*Rl/(rp+Rl)
Ip=(mu*Eg/2^0.5)/(rp+Rl)
V_out=Ip*Rl

printf("voltage gain = %.3f \n",Av)
printf("load current = %.3f mA \n",Ip)
printf("output voltage = %.3f V",V_out)

// the accurate answer for output voltage is 25.456V but in book it is given as 25.35V


//Variable declarations
A = complex(0,60)                  //amplifier
B = complex(0,30)                  //amplifier
AB = A*B
C = (1+A)/AB                       //condition for oscillation
phi = phasemag(C)               //phase

//Result
printf ( "C = %.4f with phase = %.2f ",abs(C),phi)

//Given that
C = 1.5*10^-6  //in F
V = 57  //in volts
L = 12*10^-3  //in H

//Sample Problem 33-2a
printf("**Sample Problem 33-2a**\n")
//V(accross Inductor) = V(accross Capacitor)
//-L*(dI/dt) = V
//I = C*(dV/dt)
//L*C*(d^2V/dt^2) = -V
//at t=0, Potential difference = V
w = 1/sqrt(L*C)
printf("The potential defference accross the inductor is V=%d*cos(%d*t)\n", V, w)

//Sample Problem 33-2b
printf("\n**Sample Problem 33-2b**\n")
MaxRate = abs(-V/L)
printf("The maximum rate of change in current is %1.2famp/s", MaxRate)
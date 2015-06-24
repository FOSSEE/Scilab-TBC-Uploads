//Problem 45.03: A coil of inductance 50 mH and resistance 5 ohm is connected to a 110 V, d.c. supply. Determine (a) the final value of current, (b) the value of current after 4 ms, (c) the value of the voltage across the resistor after 6 ms, (d) the value of the voltage across the inductance after 6 ms, and (e) the time when the current reaches 15 A.

//initializing the variables:
L = 0.05; // in Henry
R = 5; // in Ohm
V = 110; // in VOlts
ti = 0.004; // in sec
tvr = 0.006; // in sec
tvl = 0.006; // in sec
it = 15; // in amperes

//calculation:
//steady state current i
i = V/R
//when time t = 4ms current is
i4 = (V/R)*(1 - %e^(-1*ti*R/L))
//resistor voltage, VR
VR6 = V*(1 - %e^(-1*tvr*R/L))
//inductor voltage, VL
VL6 = V*(%e^(-1*tvl*R/L))
//time, t
ti = (-1*L/R)*log(1 - it*R/V)

printf("\n\n Result \n\n")
printf("\n steady state current i is %.0f A",i)
printf("\n when time t = 4ms current is is %.2f A",i4)
printf("\n  value of resistor voltage at t = 6ms is %.2f V",VR6)
printf("\n  value of inductor voltage at t = 6ms is %.2f V",VL6)
printf("\n  the time after connection when the current is 15 A is %.5f sec",ti)

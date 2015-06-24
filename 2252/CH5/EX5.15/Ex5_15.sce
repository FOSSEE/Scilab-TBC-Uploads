
R=.5+40+15//total resistance
L=1//total inductance
T=L/R
V=12//emf of battery
I=V/R//final steady current in the circuit
i=.04//current at time t after closing the circuit
t=-T*log(1-i/I)
mprintf("The relay will begin to operate %f sec after the relay circuit is closed\n",t)

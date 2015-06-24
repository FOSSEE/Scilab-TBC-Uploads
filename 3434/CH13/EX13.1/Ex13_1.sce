clc
// given data
A=0.25 // area in m^2
d=0.5 // distance between electrodes in m 
B=1.8 // flux density in Wb/m^2
u=1200.0 // average gas velocity in m/s
sigma=10.0 // mho/m

Vo=B*u*d //  in Volts
Pmax=1*sigma*(u**2)*(B**2)*A*d/(4.0*10**6) //  in MW

printf("Maximum Power output %.3f MW",Pmax)

//Problem 40.22: Calculate the value of the energy stored when a current of 50 mA is flowing in a coil of inductance 200 mH. What value of current would double the energy stored?

//initializing the variables:
L = 0.2; // in H
I = 0.05; // in Amperes
u0 = 4*%pi*1E-7; 
ur = 1;

//calculation:
//energy stored in inductor
W = L*I*I/2
//current I
I = (2*2*W/L)^0.5

printf("\n\n Result \n\n")
printf("\nenergy stored in inductor is %.2E J",W)
printf("\ncurrent I is %.2E A",I)
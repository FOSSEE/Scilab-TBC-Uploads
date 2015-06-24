//Problem 26.02: A current of (15+i8)A flows in a circuit whose supply voltage is (120+i200)V.Determine (a) the active power, and (b) the reactive power.

//initializing the variables:
V = 120 + %i*200; // in volts
I = 15 + %i*8; // in amperes

//calculation:
//Active power, P
Pa = real(V)*real(I) + imag(V)*imag(I)
//Reactive power, Q
Q = imag(V)*real(I) - real(V)*imag(I)

printf("\n\n Result \n\n")
printf("\n (a) the active power in the circuit %.0f W",Pa)
printf("\n (b) the reactive power in the circuit %.0f var ",Q)
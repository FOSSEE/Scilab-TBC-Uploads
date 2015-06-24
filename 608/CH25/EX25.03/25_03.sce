//Problem 25.03: The admittance of a circuit is (0.040 + i0.025) S. Determine the values of the resistance and the capacitive reactance of the circuit if they are connected (a) in parallel, (b) in series. Draw the phasor diagram for each of the circuits.

//initializing the variables:
Y = 0.040 - %i*0.025; // in S

//calculation:
//impedance, Z
Z = 1/Y
//conductance, G
G = real(Y)
//Suspectance, Bc
Bc = abs(imag(Y))
//parallrl 
//resistance, R
Rp = 1/G
//capacitive reactance
Xcp = 1/Bc
//series
//resistance, R
Rs = real(Z)
//capacitive reactance
Xcs = abs(imag(Z))

printf("\n\n Result \n\n")
printf("\n (a)for parallel, resistance,R is %.0f ohm and capacitive reactance, Xc is %.0f ohm ",Rp,Xcp)
printf("\n (b)forseries, resistance,R is %.2f ohm and capacitive reactance, Xc is %.2f ohm ",Rs,Xcs)
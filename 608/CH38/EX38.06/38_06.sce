//Problem 38.06: The core of a transformer operating at 50 Hz has an eddy current loss of 100 W/m3 and the core laminations have a thickness of 0.50 mm. The core is redesigned so as to operate with the same eddy current loss but at a different voltage and at a frequency of 250 Hz. Assuming that at the new voltage the maximum flux density is one-third of its original value and the resistivity of the core remains unaltered, determine the necessary new thickness of the laminations.

//initializing the variables:
Pe = 100; // in W/m3
f1 = 50; // in Hz
t1 = 0.0005; // in m
x = 1/3;
f2 = 250; // in Hz

//calculation: 
//Pe = ke*(Bm1*f1*t1)^2
//Hence, at 50 Hz frequency
ke = Pe/(Bm1*f1*t1)^2
//At 250 Hz frequency
Bm2 = x*Bm1
t2 = ((Pe/ke)^0.5)/(Bm2*f2)

printf("\n\n Result \n\n")
printf("\nlamination thickness is %.2Em",t2)
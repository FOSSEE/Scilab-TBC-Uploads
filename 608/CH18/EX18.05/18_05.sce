//Problem 18.05: The op amp shown in Figure 18.6 has an input bias current of 100 nA at 20°C. Calculate (a) the voltage gain, and (b) the output offset voltage due to the input bias current. (c) How can the effect of input bias current be minimised?

//initializing the variables:
Ii = 100E-9; // in Amperes
T = 20; // in °C
Rf = 1E6; // in ohms
Ri = 10000; // in ohms

//calculation:
A = -1*Rf/Ri
Vos = Ii*Ri*Rf/(Ri+Rf)

printf("\n\n Result \n\n")
printf("\n (a)the voltage gain is %.0f",A)
printf("\n (b)output offset voltage is %.5f V",Vos)
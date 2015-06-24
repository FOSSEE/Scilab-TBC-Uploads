//Problem 36.03: Determine the rms value of the current waveform represented by i = 100sinwt + 20sin(3wt + pi/6) + 10sin(5wt + 2*pi/3) mA

//initializing the variables:
A1 = 0.100; // in amperes
A3 = 0.020; // in amperes
A5 = 0.010; // in amperes

//calculation:
//the rms value of current is given by
Irms = ((A1^2 + A3^2 + A5^2)/2)^0.5

printf("\n\n Result \n\n")
printf("\n the rms value of current is %.5f A",Irms)
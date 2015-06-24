//Problem 38.01: The area of a hysteresis loop obtained from a ferromagnetic specimen is 12.5 cm2. The scales used were: horizontal axis 1 cm = 500 A/m; vertical axis 1 cm = 0.2 T. Determine (a) the hysteresis loss per m3 per cycle, and (b) the hysteresis loss per m3 at a frequency of 50 Hz.

//initializing the variables:
A = 12.5; // in cm2
x = 500; // horizontal axis 1 cm = 500 A/m
y = 0.2; // vertical axis 1 cm = 0.2 T
f = 50; // in Hz

//calculation: 
//hysteresis loss per cycle
HL = A*x*y
//At 50 Hz frequency, hysteresis loss
HLf = HL*f

printf("\n\n Result \n\n")
printf("\n(a)hysteresis loss per cycle is = %.0f J/m3",HL)
printf("\n(b)At 50 Hz frequency, hysteresis loss %.0f W/m3",HLf)
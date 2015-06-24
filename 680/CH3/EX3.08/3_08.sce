//Problem 3.08:

//initializing the variables:
pco = 0.15; // in mm of Hg
P = 760; // in mm of Hg

//calculation:
yco = pco/P
ppm = yco*1E6

printf("\n\nResult\n\n")
printf("\n the parts per million of CO in the exhaust is %.0f ppm",ppm)
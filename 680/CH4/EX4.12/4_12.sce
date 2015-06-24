//Problem 4.12:

//initializing the variables:
r = 500000; // in gpm
e = 0.30;
d = 3000; // in ft

//calculation:
mdt = r*0.00378*1000/60 // in kg/sec
delPE = mdt*9.8*d*0.3048
P = e*delPE

printf("\n\nResult\n\n")
printf("\n actual power output is %.2E W",P)
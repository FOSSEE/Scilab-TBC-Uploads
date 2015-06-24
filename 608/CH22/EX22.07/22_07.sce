//Problem 22.07: The frequency of the supply to the stator of an 8- pole induction motor is 50 Hz and the rotor frequency is 3 Hz. Determine (a) the slip, and (b) the rotor speed.

//initializing the variables:
p = 8/2; // number of pairs of poles
f = 50; // in Hz
fr = 3; // in Hz

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
ns = f/p
//fr = s*f
s = (fr/f)
//the rotor speed.
nr = ns*(1 - s)
nrrpm = nr*60

printf("\n\n Result \n\n")
printf("\n(a) slip is %.0f percent",s*100)
printf("\n (b) rotor speed is %.0f rev/min",nrrpm)
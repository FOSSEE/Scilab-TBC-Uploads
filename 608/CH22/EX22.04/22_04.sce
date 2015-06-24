//Problem 22.04: The stator of a 3-phase, 4-pole induction motor is connected to a 50 Hz supply. The rotor runs at 1455 rev/min at full load. Determine (a) the synchronous speed and (b) the slip at full load.

//initializing the variables:
p = 4/2; // number of pairs of poles
f = 50; // in Hz
nr = 1455/60; // in rev/sec

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
ns = f/p
//The slip, s
s = ((ns - nr)/ns)*100 // in percent

printf("\n\n Result \n\n")
printf("\n(a) synchronous speed is %.0f rev/sec",ns)
printf("\n(b) slip is %.0f percent",s)
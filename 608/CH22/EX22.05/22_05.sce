//Problem 22.05: A 3-phase, 60 Hz induction motor has 2 poles. If the slip is 2% at a certain load, determine (a) the synchronous speed, (b) the speed of the rotor and (c) the frequency of the induced e.m.f.’s in the rotor.

//initializing the variables:
p = 2/2; // number of pairs of poles
f = 60; // in Hz
s = 0.02; // slip

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
ns = f/p
//The the rotor runs at
nr = ns*(1 - s)
//frequency of the e.m.f.’s induced in the rotor bars is
fr = ns - nr

printf("\n\n Result \n\n")
printf("\n(a) synchronous speed is %.0f rev/sec",ns)
printf("\n(b) rotor speed is %.1f rev/sec",nr)
printf("\n(c) frequency of the e.m.f.’s induced in the rotor bars is is %.1f Hz",fr)
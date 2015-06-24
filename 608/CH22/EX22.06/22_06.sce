//Problem 22.06: A three-phase induction motor is supplied from a 50 Hz supply and runs at 1200 rev/min when the slip is 4%. Determine the synchronous speed.

//initializing the variables:
f = 50; // in Hz
nr = 1200/60; // in rev/min
s = 0.04; // slip

//calculation:
//the synchronous speed.
ns = nr/(1 - s)
nsrpm = ns*60
printf("\n\n Result \n\n")
printf("\n synchronous speed is %.0f rev/min",nsrpm)
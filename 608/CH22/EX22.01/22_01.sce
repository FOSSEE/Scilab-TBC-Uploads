//Problem 22.01: A three-phase two-pole induction motor is connected to a 50 Hz supply. Determine the synchronous speed of the motor in rev/min.

//initializing the variables:
f = 50; // in Hz
p = 2/2; // number of pairs of poles

//calculation:
//ns is the synchronous speed, f is the frequency in hertz of the supply to the stator and p is the number of pairs of poles.
ns = f/p
nsrpm = ns*60

printf("\n\n Result \n\n")
printf("\nsynchronous speed of the motor is %.0f rev/min", nsrpm)
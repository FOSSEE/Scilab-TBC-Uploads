clc
//initialization of variables
P= 5*746 // power of fan converted in watt
t=1*60*60 // time converted to seconds

// by first law of thermodynamics Q=delU + W
// Q=0 hence -W=delU
// first we find work input
W=-P*t // work in J
delU=-W // from 1st law
printf("The internal energy increase is "+string(delU)+" J")
// The answer is approximated in textbook
// our answer is precise


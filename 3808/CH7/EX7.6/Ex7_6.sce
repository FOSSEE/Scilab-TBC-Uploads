//Chapter 07: Discrete Probability

clc;
clear;

s=2**10           //no of bits-0,1 power sequence ie 10
eb=1                    //for bits are 1
pEb=eb/s                 //probability of event E bar that all the bits are 1
pE=1-pEb                //probability of event E
disp(pE,'The probability that the bit string will contain at least one 0 bit is')

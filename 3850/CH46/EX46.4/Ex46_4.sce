
//To calculate the Activity of Copper
//Example 46.4

clear;

clc;

Na=6*10^23;//Avagadro's Number

m=1*10^-6;//Mass of the Copper Sample in grams

M=63.5;//Atomic Weight of Copper

N=Na*m/M;//Number of Atoms in i microgram of Copper

l=1.516*10^-5;//Decay Constant for Copper

Act=l*N;//Activity of the Copper Sample in disintegrations/s

printf("Activity of 1 microgram of Copper Sample = %.3f Ci",Act/(3.7*10^10));//1Ci = 3.7*10^10 disintegrations/s

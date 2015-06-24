clc
//chapter 7:Crystal Oscillator Characteristics
//Example 7.7 page no 266
//given
f=20*10^6//given frequency
//If the crystal load capacitnace is specified to be 32pF, then the series combination of C1 and C2 must be 32pF. this could be satisfied by using 64pF capacitors for both C1 and C2.
gm=1.5*10^-3//transconductance
C1=64*10^-12
C2=64*10^-12
r1=gm/((2*%pi*f)^2*C1*C2)//series resistance of the crystal
mprintf('The series resistnce is approximately %f ohm ',r1)
disp('In order for oscillations to occur, the loop gain must still be greater than 1')
G=gm*((2*%pi*f*C1)^-1)^2/r1//loop gain
disp(G,'loop gain is ')

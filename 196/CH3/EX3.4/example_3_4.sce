//Chapter 3
//Example 3-4
//ProbOnOpampResistance 
//Page 49
clear;clc;
//Given
Vout=12.5;//in volts
Il=2*10^-3;//in amperes
Rl=Vout/Il;//Load resistance in ohm
//example 3-4(a)
printf("\n\n Value of Load Resistance =  %.8f ohm \n\n",Rl)
//example 3-4(b)
I=0.05*10^-3;
Iout=I+Il;
printf("\n\n Value of output current =  %.8f amp \n\n",Iout)
//example 3-4(c)
printf("\n\n The circuit input resistance is Rl=10Kohm")
clc
//Chapter 4:Frequency selective networks and transformers
//example 4.2
//given
//Forty decibles corresponds to a voltage ratio of 100:1 therefore since A(jwo)=1
Ajwo=0.01
n=5//no. of harmonics
Q=n/(Ajwo*(n^2-1))//quality point
mprintf('the minimum circuit Q is =Qmin = %f ',Q)

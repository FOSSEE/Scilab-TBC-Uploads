// Exa 11.1
// To calculate the processing gain and improvement in information rate.

clc;
clear all;

CR1=1.2288; //Mcps(Clock rate 1)
CR2=5;//Mcps(Clock rate 2)
R1=9.6; //Information rate in Kbps for CR1
PG2=256;  //Processing Gain for CR2

//solution
PG1=10*log10(CR1*10^3/9.6);//Processing Gain for CR1
R2=CR2*10^3/PG2;//information rate in Kbps for CR2
printf('The processing gain for clock rate 1.2288Mcps is %d dB\n ',PG1);
printf('Improvemrnt in information rate is %.2f Kbps\n',R2-R1);

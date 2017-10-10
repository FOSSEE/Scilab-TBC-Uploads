//Example 10_10
clc();
clear;
//To findout how fast the nitrogen molecule moving in air
M=28     //Units in Kg/Mol
Na=6.02*10^26    //Units in K mol^-1
mo=M/Na   //Units in Kg
k=1.38*10^-23    //units in J/K
T=27+273    //Units in K
v2=(3*k*T)/mo    //unit in Meter^2/Sec^2
v=sqrt(v2)     //Units in meter/sec
printf("The nitrogen molecule goes at a speed of V=%d meter/sec",v)
//In text book the answer is printed wrong as v=517 m/sec the correct answer is v=516 meter/ sec

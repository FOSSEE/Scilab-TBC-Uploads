
// Ex6_16

clc;

// Given:
P=100;// in watts

// Solution:
P1=P*10^7;// in erg/s
P2=P1/(1.6*10^-6);// in MeV/s
// 1 ifssion generates 200 MeV of energy
f=P2/200;// no. of fissions

printf("The no. of fissions produced per second will be = %f",f)

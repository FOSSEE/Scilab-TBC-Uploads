clc;
//page no. 650
// problem no. 14.2
// the two symbols to be transmitted are m1 and m2,the probabilities of which are not equal
// To design the optimum receiver we need to decide the threshold say d
// N be the given noise  PSD,E the energy of the signal, assume N =1, E=1.5
Pm1=input("probability of symbol m1=");
Pm2=input("probability of symbol m2=");
//d is calculated as follows
N=1;
E=1.5;
d=(N/(4*sqrt(E)))*log(Pm2/Pm1);
disp(d,"the threshold is=");
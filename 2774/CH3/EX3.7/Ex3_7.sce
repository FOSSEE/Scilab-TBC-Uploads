clc
// variable initialization

d=2   //distance travelled by weight in m
m=50  // mass of weight in kg
g=9.8  // gravitaional acceleration in m/sec^2

// calculation of work in non-quasiequilibrium process
W=m*g*d;// work in joules

// the work done must be transferred as heat
Q=W;

printf("The heat that must transfer is "+string(Q)+" Joules")

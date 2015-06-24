clear;
clc;

uts=5758;  //ultimate tensile strength
l=200;
wt=.604;

h=uts/2;
sag=wt*l*l/(8*h);

printf("The sag is:%.3f m",sag);
